
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioinfo ;
typedef int HANDLE ;


 int TRACE (char*,int ,int) ;
 int __badioinfo ;
 int * get_ioinfo_alloc (int*) ;
 int msvcrt_set_fd (int *,int ,int) ;
 int release_ioinfo (int *) ;

int msvcrt_alloc_fd(HANDLE hand, int flag)
{
    int fd;
    ioinfo *info = get_ioinfo_alloc(&fd);

    TRACE(":handle (%p) allocating fd (%d)\n", hand, fd);

    if(info == &__badioinfo)
        return -1;

    msvcrt_set_fd(info, hand, flag);
    release_ioinfo(info);
    return fd;
}
