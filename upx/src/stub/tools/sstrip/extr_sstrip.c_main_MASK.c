#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Elf64_Phdr ;
typedef  int /*<<< orphan*/  Elf64_Ehdr ;
typedef  int /*<<< orphan*/  Elf32_Phdr ;
typedef  int /*<<< orphan*/  Elf32_Ehdr ;

/* Variables and functions */
#define  ELFCLASS32 129 
#define  ELFCLASS64 128 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned long*) ; 

int FUNC16(int argc, char *argv[])
{
    int             fd;
    union {
        Elf32_Ehdr  ehdr32;
        Elf64_Ehdr  ehdr64;
    } e;
    union {
        Elf32_Phdr  *phdrs32;
        Elf64_Phdr  *phdrs64;
    } p;
    unsigned long   newsize;
    char            **arg;
    int             failures = 0;

    if (argc < 2 || argv[1][0] == '-') {
        FUNC9("Usage: sstrip FILE...\n"
               "sstrip discards all nonessential bytes from an executable.\n\n"
               "Version 2.0-X Copyright (C) 2000,2001 Brian Raiter.\n"
               "Cross-devel hacks Copyright (C) 2004 Manuel Novoa III.\n"
               "This program is free software, licensed under the GNU\n"
               "General Public License. There is absolutely no warranty.\n");
        return EXIT_SUCCESS;
    }

    progname = argv[0];

    for (arg = argv + 1 ; *arg != NULL ; ++arg) {
        filename = *arg;

        fd = FUNC8(*arg, O_RDWR);
        if (fd < 0) {
            FUNC3("can't open");
            ++failures;
            continue;
        }

        switch (FUNC12(fd, &e.ehdr32)) {
            case ELFCLASS32:
                if (!(FUNC10(fd, &e.ehdr32)                    &&
                      FUNC13(fd, &e.ehdr32, &p.phdrs32)        &&
                      FUNC4(&e.ehdr32, p.phdrs32, &newsize)   &&
                      FUNC15(fd, &newsize)                       &&
                      FUNC6(&e.ehdr32, p.phdrs32, newsize)    &&
                      FUNC1(fd, &e.ehdr32, p.phdrs32, newsize)))
                    ++failures;
                break;
            case ELFCLASS64:
                if (!(FUNC11(fd, &e.ehdr64)                    &&
                      FUNC14(fd, &e.ehdr64, &p.phdrs64)        &&
                      FUNC5(&e.ehdr64, p.phdrs64, &newsize)   &&
                      FUNC15(fd, &newsize)                       &&
                      FUNC7(&e.ehdr64, p.phdrs64, newsize)    &&
                      FUNC2(fd, &e.ehdr64, p.phdrs64, newsize)))
                    ++failures;
                break;
            default:
                ++failures;
                break;
        }
        FUNC0(fd);
    }

    return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}