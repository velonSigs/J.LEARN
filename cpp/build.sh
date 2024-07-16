#!/bin/bash

# 定义 build 目录名称
BUILD_DIR="build"

# 检查并删除已存在的 build 目录
if [ -d "$BUILD_DIR" ]; then
    echo "删除已存在的 build 目录..."
    rm -rf "$BUILD_DIR"
fi

# 创建新的 build 目录
echo "创建新的 build 目录..."
mkdir "$BUILD_DIR"

# 进入 build 目录
cd "$BUILD_DIR"

# 执行 cmake 命令
echo "执行 cmake 命令..."
cmake -DCMAKE_BUILD_TYPE=Debug ..

# 检查 cmake 命令是否成功
if [ $? -ne 0 ]; then
    echo "cmake 配置失败，终止执行。"
    exit 1
fi

# 执行 make 命令
echo "执行 make 命令..."
make

# 检查 make 命令是否成功
if [ $? -ne 0 ]; then
    echo "make 编译失败，终止执行。"
    exit 1
fi

echo "脚本执行完毕。"

