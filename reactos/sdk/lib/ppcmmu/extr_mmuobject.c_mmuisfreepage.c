
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
typedef TYPE_1__ ppc_map_t ;
typedef int paddr_t ;


 TYPE_1__* PpcPageTable ;

int mmuisfreepage(paddr_t pageno)
{
    ppc_map_t *PagePtr = PpcPageTable + pageno;
    return !PagePtr->addr;
}
