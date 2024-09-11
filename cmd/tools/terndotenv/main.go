package main

import (
	"os/exec"

	"github.com/joho/godotenv"
)

func main() {
	if err := godotenv.Load(); err != nil {
		panic(err)
	}

	cmd := exec.Command(
		"tern",
		"migrate",
		"--config",
		"./internal/store/pgstore/migrations/tern.conf",
		"--migrations",
		"./internal/store/pgstore/migrations",
	)

	if err := cmd.Run(); err != nil {
		panic(err)
	}
}
