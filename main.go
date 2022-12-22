package main

import (
    "os"
    "fmt"
    "strings"
)

func main() {
    s := fmt.Sprintf("%s", os.Args[1:])
    s = strings.ReplaceAll(strings.ReplaceAll(s, "[", ""), "]", "")
    fmt.Println([]uint8(s))
}
