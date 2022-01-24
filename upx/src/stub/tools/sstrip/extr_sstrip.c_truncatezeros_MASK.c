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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,unsigned char*,unsigned long) ; 

__attribute__((used)) static int FUNC4(int fd, unsigned long *newsize)
{
    unsigned char   contents[1024];
    unsigned long   size, n;

    size = *newsize;
    do {
        n = sizeof contents;
        if (n > size)
            n = size;
        if (FUNC2(fd, size - n, SEEK_SET) == (off_t)-1)
            return FUNC1("cannot seek in file.");
        if (FUNC3(fd, contents, n) != (ssize_t)n)
            return FUNC1("cannot read file contents");
        while (n && !contents[--n])
            --size;
    } while (size && !n);

    /* Sanity check.
     */
    if (!size)
        return FUNC0("ELF file is completely blank!");

    *newsize = size;
    return TRUE;
}