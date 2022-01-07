
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vsid; struct TYPE_4__* next; } ;
typedef TYPE_1__ MmuVsidInfo ;


 TYPE_1__* VsidHead ;

MmuVsidInfo *findvsid(int vsid)
{
    MmuVsidInfo *info;
    for(info = VsidHead; info; info = info->next)
    {
 if(info->vsid == vsid) return info;
    }
    return 0;
}
