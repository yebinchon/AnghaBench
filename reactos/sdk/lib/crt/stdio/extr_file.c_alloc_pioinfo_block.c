
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; } ;
typedef TYPE_1__ ioinfo ;
typedef int BOOL ;


 int ENFILE ;
 int ENOMEM ;
 int FALSE ;
 int INVALID_HANDLE_VALUE ;
 scalar_t__ InterlockedCompareExchangePointer (void**,TYPE_1__*,int *) ;
 int MSVCRT_FD_BLOCK_SIZE ;
 int MSVCRT_MAX_FILES ;
 int TRUE ;
 int WARN (char*) ;
 int * __pioinfo ;
 int * _errno () ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static inline BOOL alloc_pioinfo_block(int fd)
{
    ioinfo *block;
    int i;

    if(fd<0 || fd>=MSVCRT_MAX_FILES)
    {
        *_errno() = ENFILE;
        return FALSE;
    }

    block = calloc(MSVCRT_FD_BLOCK_SIZE, sizeof(ioinfo));
    if(!block)
    {
        WARN(":out of memory!\n");
        *_errno() = ENOMEM;
        return FALSE;
    }
    for(i=0; i<MSVCRT_FD_BLOCK_SIZE; i++)
        block[i].handle = INVALID_HANDLE_VALUE;
    if(InterlockedCompareExchangePointer((void**)&__pioinfo[fd/MSVCRT_FD_BLOCK_SIZE], block, ((void*)0)))
        free(block);
    return TRUE;
}
