
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int crit; } ;
typedef TYPE_1__ ioinfo ;


 int EnterCriticalSection (int *) ;
 TYPE_1__ __badioinfo ;
 TYPE_1__* get_ioinfo_nolock (int) ;
 int init_ioinfo_cs (TYPE_1__*) ;

ioinfo* get_ioinfo(int fd)
{
    ioinfo *ret = get_ioinfo_nolock(fd);
    if(ret == &__badioinfo)
        return ret;
    init_ioinfo_cs(ret);
    EnterCriticalSection(&ret->crit);
    return ret;
}
