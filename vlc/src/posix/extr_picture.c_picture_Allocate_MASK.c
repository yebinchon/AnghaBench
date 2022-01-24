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

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

void *FUNC4(int *restrict fdp, size_t size)
{
    int fd = FUNC3();
    if (fd == -1)
        return NULL;

    if (FUNC0(fd, size)) {
error:
        FUNC2(fd);
        return NULL;
    }

    void *base = FUNC1(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (base == MAP_FAILED)
        goto error;

    *fdp = fd;
    return base;
}