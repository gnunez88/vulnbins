# VulnBins

This is a way to compile executable binaries disabling the different protections a
system offers in a quick and easy way.

## How Does It Work?

Create a simple C programme with the name `test.c` within the directory where the
`Makefile` file is in, and just run

```bash
make
```

And you will have the different combinations in 32 and 64 bits of binary protections.

You can have any other source file name, however, to make it work, you should change 
the variable `APP` within the `Makefile` file.

You may like to have a single binary with some protections removed instead of a bunch
of them. You can do so specifying it to `make`:

```bash
make 32-no_dep
make 32-no_canary
make 64-no_dep-no_pie
```

The options can be found within the `Makefile` file, there are also some aliases at
the end of the `Makefile` file, with different "levels" assigned by me, which might
be completely wrong, since I am doing this to start in this field and I do not know
what protections are harder to bypass.


## What Do I need?

I have been doing this on Kali (Debian-based GNU/Linux), similar packages are to be
found for the different distros.

The development basic utils:
```bash
sudo apt install -y binutils
```

To cross-compile, regarding architecture:
```bash
sudo apt install -y gcc-multilib
```

## What Else Should I Use to Play with Binaries?

I still have to figure out the differents tools I have seen. Nevertheless, I simple list
may include, on GNU/Linux systems:

- checksec
- ldd
- objdump
- readelf

# TODO

- Add platform cross-compilation:
    - Windows (with `mingw-w64`)

- Right now, there are some levels assigned just to compile quicker, however, there is no  
    criterium of the real difficulty of a level. I have little to no experience whatsoever.  
    I would like to assign better levels once I know how hard bypassing the different protections  
    is.

