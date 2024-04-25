


# 作業イメージ

- githubからソースコードをclone後、開発開始
- readme.mdに開発環境構築方法を記載
  - java 17インストール
  - pleades 2024インストール

## 実行環境

- AWS EC2

## 開発環境

### バックエンド

- eclipse
- gradle
- spring boot

### フロントエンド

- 来年度

### git
- 実行環境はローカル実行環境
- feratureブランチ
- 成果物をdevlopブランチにpull request
- mainへのプッシュ
  - devlopブランチ作業者がmainにプッシュ
### デプロイ
- AWS CODEBUILD
  - gradleビルドでjarファイル化
  - dockerコンテナをビルド時にjarファイルをデプロイ

## 構築内容

### 概要

- springSampleプロジェクトのDBデータ取得をjdbcTemplateを使用した構成から、jpaRepositoryを使用する構成へのマイグレーション
- 従業員全員抽出する機能を追加

## 参考

### サンプルソース

https://app.box.com/s/g51ig6ntwv4pvpypxixsklieoa6oq2an

### サンプルソース（maven)をgradleプロジェクトに変換

https://qiita.com/pe-suke/items/0351b8bbc44b84f80504

> gradle init --type pomの二番目の問いはNoにしないとマルチプロジェクトとして作成されてしまう。

### 【Lombok】GradleでLombokを導入しようとしたらコンパイルエラー

https://qiita.com/Souhei-H/items/84fcb9233b1270d0c761

> gradle initの標準で作成されるgradele.buildにはLombok関する記述が不足している。

### メインクラスのマニフェストが不足している

```
jar{
    manifest{
        attributes 'Main-Class' : 'com.example.demo.trySpring.HelloController' //クラス名を指定する
    }
}
```

### @Controllerアノテーションが機能しない

- spring bootのversion '3.2.4'をbuild.gradleに記述
- サンプルアプリ使えない？
    - 最終的にgradle pluginの「io.spring.dependency-management」でバージョン違いを吸収

### GRADLEのインストール（設置）

### 環境変数の設定

- GRADLE_HOME
- JAVA_HOME

https://qiita.com/hollage0214/items/784b75f2881ddf941c5b

### SPRING INITIALIZRでspring - gradleのサンプルプロジェクト取得

### gradle buildコマンドでビルド

https://qiita.com/n_morioka/items/4dffd2e4b6182d828341

### eclipse上でのgradleタスク実行

https://itsakura.com/eclipse-gradle-execution
### jpaリポジトリについて
https://qiita.com/shukawam/items/6e379df031dccebddd36
https://qiita.com/shindo_ryo/items/af7d12be264c2cc4b252