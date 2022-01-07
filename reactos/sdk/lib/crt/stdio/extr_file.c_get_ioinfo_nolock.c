
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioinfo ;


 int MSVCRT_FD_BLOCK_SIZE ;
 int MSVCRT_MAX_FILES ;
 int __badioinfo ;
 int ** __pioinfo ;

__attribute__((used)) static inline ioinfo* get_ioinfo_nolock(int fd)
{
    ioinfo *ret = ((void*)0);
    if(fd>=0 && fd<MSVCRT_MAX_FILES)
        ret = __pioinfo[fd/MSVCRT_FD_BLOCK_SIZE];
    if(!ret)
        return &__badioinfo;

    return ret + (fd%MSVCRT_FD_BLOCK_SIZE);
}
