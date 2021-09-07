#!/bin/bash
#配置したい設定ファイル
dotfiles=(.zshrc )

# 設定ファイルのシンボリックリンクをホームディレクトリ直下に作成
for file in "${dotfiles[@]}"; do
  ln -svf $file ~/
done

#########################################################
# 初回は実行権限の付与が必要
# chmod +x deploy.sh

# スクリプトを実行しシンボリックリンクを一気に作成する
# ./deploy.sh