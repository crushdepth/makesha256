#!/bin/Zsh

# Calculate sha256 hash for each file in directory and save it to a text file.
# Uses Zsh. Change the shell in the shebang (first line) if you want to use bash or something else.

for FILE in *

do
shasum -a 256 $FILE > "$FILE.sha256sum"
done

# Clean up.
rm -rf makesha256.sh.sha256sum