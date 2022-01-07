
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioinfo ;


 int __badioinfo ;
 int alloc_pioinfo_block (int) ;
 int * get_ioinfo (int) ;

__attribute__((used)) static inline ioinfo* get_ioinfo_alloc_fd(int fd)
{
    ioinfo *ret;

    ret = get_ioinfo(fd);
    if(ret != &__badioinfo)
        return ret;

    if(!alloc_pioinfo_block(fd))
        return &__badioinfo;

    return get_ioinfo(fd);
}
