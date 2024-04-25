```mermaid
classDiagram
    class HelloController {
        -helloService: HelloService
        +getHello() String
        +postRequest(text1: String, model: Model) String
        +postDbRequest(text2: String, model: Model) String
    }
    
    class HelloService {
        -helloRepository: HelloRepository
        +findOne(id: int) Employee
    }
    
    class HelloRepository {
        -jdbcTemplate: JdbcTemplate
        +findOne(id: int) Map~String, Object~
    }
    
    class JdbcTemplate {
        +queryForMap(sql: String, args: Object...) Map~String, Object~
    }

    class EmployeeEntity {
        -employeeId: int
        -employeeName: String
        -age: int
    }
    
    class Model {
        +addAttribute(attributeName: String, attributeValue: Object) void
    }
    
    HelloController ..> HelloService
    HelloService ..> HelloRepository
    HelloRepository ..> JdbcTemplate
    HelloService ..> EmployeeEntity
    HelloController ..> Model

```