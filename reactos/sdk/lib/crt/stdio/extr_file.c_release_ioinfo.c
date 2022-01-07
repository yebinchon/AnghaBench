
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exflag; int crit; } ;
typedef TYPE_1__ ioinfo ;


 int EF_CRIT_INIT ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__ __badioinfo ;

void release_ioinfo(ioinfo *info)
{
    if(info!=&__badioinfo && info->exflag & EF_CRIT_INIT)
        LeaveCriticalSection(&info->crit);
}
