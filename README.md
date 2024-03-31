# CTFNotes

你可以fork这个仓库，自行保管维护作为CTF学习笔记仓库。

## Git教程

### 安装Git和github-cli(gh)

你可以通过官网下载安装[Git](https://git-scm.com/)和[gh](https://cli.github.com/)

也可以先安装[scoop](https://scoop.sh/)（Only for Windows），随后使用命令行安装git和gh：

```bash
scoop install git gh
```

gh主要作用是提供GitHub认证

### Github认证

使用gh登录你的GitHub账号，以便为本机的Git提供Github账号认证：

```bash
gh auth login
```

### 提交修改

在你更改了文件之后，你可以使用以下命令提交你的修改：

```bash
git add . # 添加所有修改
git commit -m "你的提交信息" # 提交修改
git push # 推送到远程仓库
```

如果你懒得每次打三行命令，我们也写了一个脚本`push.bat`，你可以直接运行它
