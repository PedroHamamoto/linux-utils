# linux-utils
A repository containing some linux utilities.

1. .zshrc configuration for developers using zplug
    1. [Install ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
    2. [Install zplug](https://github.com/zplug/zplug)
    3. Replace the content of your ~/.zshrc with the [.zshrc](./.zshrc)
2. List all gradle processes
    ```shell
    ps -ef | grep -v grep | grep gradle | awk '{ result = result ( NR==1 ? "" : " ") $2 } END{ print result }'
    ```
