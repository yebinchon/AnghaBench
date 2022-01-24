#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_4__ {int pos; char* data; int size; struct TYPE_4__* next; } ;
typedef  TYPE_1__ CHANGE ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int FSCHECK_IMMEDIATE_WRITE ; 
 int FsCheckFlags ; 
 void* FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* changes ; 
 int did_change ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,long long) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ interactive ; 
 TYPE_1__* last ; 
 int FUNC4 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int const,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*,size_t const) ; 
 scalar_t__ rw ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,size_t const) ; 
 scalar_t__ write_immed ; 

void FUNC9(off_t pos, int size, void *data)
{
    CHANGE *new;
    int did;

#ifdef __REACTOS__
    assert(interactive || rw);

    if (FsCheckFlags & FSCHECK_IMMEDIATE_WRITE) {
        void *scratch;
        const size_t readsize_aligned = (size % 512) ? (size + (512 - (size % 512))) : size;
        const off_t seekpos_aligned = pos - (pos % 512);
        const size_t seek_delta = (size_t)(pos - seekpos_aligned);
        BOOLEAN use_read = (seek_delta != 0) || ((readsize_aligned-size) != 0);

        /* Aloc temp buffer if write is not aligned */
        if (use_read)
            scratch = alloc(readsize_aligned);
        else
            scratch = data;

        did_change = 1;
        if (lseek(fd, seekpos_aligned, 0) != seekpos_aligned) pdie("Seek to %lld",seekpos_aligned);

        if (use_read)
        {
            /* Read aligned data */
            if (read(fd, scratch, readsize_aligned) < 0) pdie("Read %d bytes at %lld",size,pos);

            /* Patch data in memory */
            memcpy((char *)scratch + seek_delta, data, size);
        }

        /* Write it back */
        if ((did = write(fd, scratch, readsize_aligned)) == (int)readsize_aligned)
        {
            if (use_read) free(scratch);
            return;
        }
        if (did < 0) pdie("Write %d bytes at %lld", size, pos);
        die("Wrote %d bytes instead of %d at %lld", did, size, pos);
    }
#else
    if (write_immed) {
	did_change = 1;
	if (FUNC4(fd, pos, 0) != pos)
	    FUNC6("Seek to %lld", (long long)pos);
	if ((did = FUNC8(fd, data, size)) == size)
	    return;
	if (did < 0)
	    FUNC6("Write %d bytes at %lld", size, (long long)pos);
	FUNC2("Wrote %d bytes instead of %d at %lld", did, size, (long long)pos);
    }
#endif
    new = FUNC0(sizeof(CHANGE));
    new->pos = pos;
    FUNC5(new->data = FUNC0(new->size = size), data, size);
    new->next = NULL;
    if (last)
	last->next = new;
    else
	changes = new;
    last = new;
}