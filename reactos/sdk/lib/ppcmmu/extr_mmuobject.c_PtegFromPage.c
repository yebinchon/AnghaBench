
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ppc_pteg_t ;
struct TYPE_3__ {int addr; int proc; } ;
typedef TYPE_1__ ppc_map_t ;


 int * PpcHashedPTE ;
 size_t PtegNumber (int ,int) ;

ppc_pteg_t *PtegFromPage(ppc_map_t *map, int hfun)
{
    if(!map->proc && !map->addr) return 0;
    return &PpcHashedPTE[PtegNumber(map->addr, hfun)];
}
