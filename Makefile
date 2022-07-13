# Variables
CC=gcc
APP=test

# Compile with every possibility
main: l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16

# 32-bit

## To make it work with 32 bits on 64 bits you should install
## gcc-multilib

32:
	$(CC) $(APP).c -o $(APP)-m32 -m32

32-no_dep:
	$(CC) $(APP).c -o $(APP)-m32-no_dep -m32 -z execstack

32-no_canary:
	$(CC) $(APP).c -o $(APP)-m32-no_canary -m32 -fno-stack-protector

32-no_pie:
	$(CC) $(APP).c -o $(APP)-m32-no_pie -m32 -no-pie

32-no_canary-no_pie:
	$(CC) $(APP).c -o $(APP)-m32-no_canary-no_pie -m32 -fno-stack-protector -no-pie

32-no_dep-no_pie:
	$(CC) $(APP).c -o $(APP)-m32-no_dep-no_pie -m32 -z execstack -no-pie

32-no_dep-no_canary:
	$(CC) $(APP).c -o $(APP)-m32-no_dep-no_canary -m32 -z execstack -fno-stack-protector

32-no_dep-no_canary-no_pie:
	$(CC) $(APP).c -o $(APP) -m32 -z execstack -fno-stack-protector -no-pie

# 64-bit

64:
	$(CC) $(APP).c -o $(APP)-m64 -m64

64-no_dep:
	$(CC) $(APP).c -o $(APP)-m64-no_dep -m64 -z execstack

64-no_canary:
	$(CC) $(APP).c -o $(APP)-m64-no_canary -m64 -fno-stack-protector

64-no_pie:
	$(CC) $(APP).c -o $(APP)-m64-no_pie -m64 -no-pie

64-no_canary-no_pie:
	$(CC) $(APP).c -o $(APP)-m64-no_canary-no_pie -m64 -fno-stack-protector -no-pie

64-no_dep-no_pie:
	$(CC) $(APP).c -o $(APP)-m64-no_dep-no_pie -m64 -z execstack -no-pie

64-no_dep-no_canary:
	$(CC) $(APP).c -o $(APP)-m64-no_dep-no_canary -m64 -z execstack -fno-stack-protector

64-no_dep-no_canary-no_pie:
	$(CC) $(APP).c -o $(APP) -m64 -z execstack -fno-stack-protector -no-pie


# Aliases

l1: 32-no_dep-no_canary-no_pie

l2: 32-no_canary-no_pie

l3: 32-no_dep-no_pie

l4: 32-no_dep-no_canary

l5: 32-no_dep

l6: 32-no_canary

l7: 32-no_pie

l8: 32

l9: 64-no_dep-no_canary-no_pie

l10: 64-no_canary-no_pie

l11: 64-no_dep-no_pie

l12: 64-no_dep-no_canary

l13: 64-no_dep

l14: 64-no_canary

l15: 64-no_pie

l16: 64


# Check binary features with
# ```bash
# for f in $(ls -1 test-*); do
#   checksec --file="$f"
# done

# vim noexpandtab ts=4 sts=4 sw=4
