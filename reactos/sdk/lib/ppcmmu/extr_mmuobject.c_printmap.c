
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vaddr_t ;
struct TYPE_4__ {int proc; } ;
typedef TYPE_1__ ppc_map_t ;


 int PPC_PAGE_ADDR (TYPE_1__*) ;
 int PpcPageTable ;
 int fmtout (char*,int ,int ,int ) ;

void printmap(vaddr_t vaddr, ppc_map_t *map)
{
    fmtout("%x: proc %x addr %x\n",
           PPC_PAGE_ADDR(map - PpcPageTable),
           map->proc, vaddr);
}
