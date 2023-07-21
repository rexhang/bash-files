#!/bin/bash

# 检查参数的数量
if [ "$#" -ne 2 ]; then
    echo "需要两个参数：源目录和目标目录"
    exit 1
fi

# 获取源目录和目标目录
source_dir=$1
target_dir=$2

# 确保源文件存在
source_file="${source_dir}/1.txt"
if [ ! -f "$source_file" ]; then
    echo "源文件 ${source_file} 不存在"
    exit 1
fi

# 确保目标目录存在
if [ ! -d "$target_dir" ]; then
    echo "目标目录 ${target_dir} 不存在"
    exit 1
fi

# 移动文件
mv "$source_file" "$target_dir"
echo "文件已经从 ${source_dir} 移动到 ${target_dir}"
