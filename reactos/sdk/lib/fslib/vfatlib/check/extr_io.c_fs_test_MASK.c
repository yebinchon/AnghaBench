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
typedef  int off_t ;

/* Variables and functions */
 void* FUNC0 (size_t const) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,long long) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,size_t const) ; 

int FUNC5(off_t pos, int size)
{
    void *scratch;
    int okay;

#ifdef __REACTOS__
	const size_t readsize_aligned = (size % 512) ? (size + (512 - (size % 512))) : size;        // TMN:
	const off_t seekpos_aligned = pos - (pos % 512);                   // TMN:
    scratch = alloc(readsize_aligned);
    if (lseek(fd, seekpos_aligned, 0) != seekpos_aligned) pdie("Seek to %lld",pos);
    okay = read(fd, scratch, readsize_aligned) == (int)readsize_aligned;
    free(scratch);
#else
    if (FUNC2(fd, pos, 0) != pos)
	FUNC3("Seek to %lld", (long long)pos);
    scratch = FUNC0(size);
    okay = FUNC4(fd, scratch, size) == size;
    FUNC1(scratch);
#endif
    return okay;
}