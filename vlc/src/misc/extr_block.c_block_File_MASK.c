#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
struct TYPE_7__ {scalar_t__ p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  EISDIR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ESPIPE ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ SIZE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*) ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (void*,size_t) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,scalar_t__,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 () ; 

block_t *FUNC11(int fd, bool write)
{
    size_t length;
    struct stat st;

    /* First, get the file size */
    if (FUNC7 (fd, &st))
        return NULL;

    /* st_size is meaningful for regular files, shared memory and typed memory.
     * It's also meaning for symlinks, but that's not possible with fstat().
     * In other cases, it's undefined, and we should really not go further. */
#ifndef S_TYPEISSHM
# define S_TYPEISSHM( buf ) (0)
#endif
    if (FUNC0 (st.st_mode))
    {
        errno = EISDIR;
        return NULL;
    }
    if (!FUNC1 (st.st_mode) && !S_TYPEISSHM (&st))
    {
        errno = ESPIPE;
        return NULL;
    }

    /* Prevent an integer overflow in mmap() and malloc() */
    if ((uintmax_t)st.st_size >= SIZE_MAX)
    {
        errno = ENOMEM;
        return NULL;
    }
    length = (size_t)st.st_size;

#ifdef HAVE_MMAP
    if (length > 0)
    {
        int prot = PROT_READ | (write ? PROT_WRITE : 0);
        int flags = write ? MAP_PRIVATE : MAP_SHARED;
        void *addr = mmap(NULL, length, prot, flags, fd, 0);

        if (addr != MAP_FAILED)
            return block_mmap_Alloc (addr, length);
    }
#else
    (void) write;
#endif

    /* If mmap() is not implemented by the OS _or_ the filesystem... */
    block_t *block = FUNC3 (length);
    if (block == NULL)
        return NULL;
    FUNC5 (block);

    for (size_t i = 0; i < length;)
    {
        ssize_t len = FUNC9 (fd, block->p_buffer + i, length - i, i);
        if (len == -1)
        {
            FUNC4 (block);
            block = NULL;
            break;
        }
        i += len;
    }
    FUNC10 ();
    return block;
}