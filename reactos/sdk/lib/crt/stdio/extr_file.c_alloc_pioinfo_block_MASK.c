#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ioinfo ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ENFILE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC0 (void**,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int MSVCRT_FD_BLOCK_SIZE ; 
 int MSVCRT_MAX_FILES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * __pioinfo ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_1__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static inline BOOL FUNC5(int fd)
{
    ioinfo *block;
    int i;

    if(fd<0 || fd>=MSVCRT_MAX_FILES)
    {
        *FUNC2() = ENFILE;
        return FALSE;
    }

    block = FUNC3(MSVCRT_FD_BLOCK_SIZE, sizeof(ioinfo));
    if(!block)
    {
        FUNC1(":out of memory!\n");
        *FUNC2() = ENOMEM;
        return FALSE;
    }
    for(i=0; i<MSVCRT_FD_BLOCK_SIZE; i++)
        block[i].handle = INVALID_HANDLE_VALUE;
    if(FUNC0((void**)&__pioinfo[fd/MSVCRT_FD_BLOCK_SIZE], block, NULL))
        FUNC4(block);
    return TRUE;
}