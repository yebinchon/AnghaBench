
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ addr; scalar_t__ proc; } ;
typedef TYPE_1__ ppc_map_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ MmuFreePage ;


 TYPE_2__* FreeList ;

void freepage(ppc_map_t *PagePtr)
{
    MmuFreePage *FreePage = (MmuFreePage*)PagePtr;
    PagePtr->proc = PagePtr->addr = 0;
    FreePage->next = FreeList;
    FreeList = FreePage;
}
