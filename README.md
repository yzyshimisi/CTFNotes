# CTFNotes

本仓库包含以每个人用户名命名的Branches，每个人在自己的Branch下提交自己的笔记。

**注意：** 请先Fork本仓库的main分支，再将你Fork的仓库克隆到本地，不要直接克隆本仓库，否则你将无法push修改。

**注意：** 因为需要统一合并为一个分支，所以请创建一个以用户名命名的文件夹，把所有笔记放入其中。

## 配置教程——脚本（Windows）

1. 安装Git和gh，参考手动教程
2. 下载[CTFNotes_Setup.bat](./CTFNotes_Setup.bat)，放入合适的父目录下
3. 双击运行`CTFNotes_Setup.bat`，它会自动帮你fork仓库、克隆仓库到当前目录、自动填写.env文件并创建以用户名命名的文件夹
4. 将你的笔记**放入以用户名命名的文件夹中，不要放在最外层**，然后运行`push.bat`提交修改
5. 其他注意事项请查看手动教程

## 配置教程——手动克隆

### 1. 安装 Git 和 GitHub CLI (gh)

你可以通过官网下载安装[Git](https://git-scm.com/)和[gh](https://cli.github.com/)

也可以先安装[scoop](https://scoop.sh/)（Only for Windows），随后使用命令行安装git和gh：

```bash
scoop install git
scoop install gh
```

gh主要作用是提供GitHub认证

### 2. Github 认证

使用gh登录你的GitHub账号，以便为本机的Git提供Github账号认证：

```bash
gh auth login
```

全部默认按回车即可

### 3. Fork 仓库

在本仓库右上角点击`Fork`，确认勾选"Copy the `main` branch only"，将本仓库的main分支Fork到你的账号下。

### 4. 克隆仓库

在你fork的仓库中，点击`Code`按钮，复制仓库地址，然后在本地使用以下命令克隆仓库：

```bash
git clone 你的仓库地址
```

### 5. 提交修改到你的仓库

**注意：** 请创建以你的用户名命名的文件夹，将你的笔记放入其中。

**注意：** git命令需要在CTFNotes文件夹中（包含.git文件）操作，建议将CTFNotes文件夹创建为VSCode工作区

在你更改了文件之后，你可以使用以下命令提交你的修改：

```bash
git add . # 添加所有修改
git commit -m "你的提交信息" # 提交修改
git push # 推送到远程仓库
```

如果你懒得每次打三行命令，我们也写了一个脚本`push.bat`，你可以每次做完更改后直接运行它

### 6. 提交 PR 到团队仓库（每个月一次）

你可以在你的仓库页面点击`Pull Request`按钮，提交PR到本仓库的**以你的用户名命名的分支**，不要交到主分支。

你也可以使用脚本`pr.bat`来提交PR，注意要在.env文件中填写你的用户名（不是昵称）。如果出错请前往网页解决。
