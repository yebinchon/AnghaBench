
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ppc_map_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ MmuVsidInfo ;


 TYPE_1__* VsidHead ;
 int dumpvsid (TYPE_1__*) ;
 int fmtout (char*) ;

void dumpmap()
{
    int i,j;
    ppc_map_t *map;
    MmuVsidInfo *vsid;
    fmtout("Address spaces:\n");
    for (vsid = VsidHead; vsid; vsid = vsid->next)
    {
        dumpvsid(vsid);
    }
}
