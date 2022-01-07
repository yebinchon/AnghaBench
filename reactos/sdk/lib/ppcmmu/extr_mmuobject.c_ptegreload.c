
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vaddr_t ;
typedef int ppc_trap_frame_t ;
struct TYPE_6__ {int pteh; int ptel; } ;
struct TYPE_7__ {TYPE_1__ pte; } ;
typedef TYPE_2__ ppc_map_t ;
struct TYPE_8__ {TYPE_1__* block; } ;


 int Clock ;
 int PPC_PAGE_ADDR (TYPE_2__*) ;
 TYPE_4__* PpcHashedPTE ;
 int PpcPageTable ;
 int PtegNumber (int ,int) ;
 int fmtout (char*,int ,int ,int,int,int,int ) ;
 TYPE_2__* mmuvirtmap (int ) ;

int ptegreload(ppc_trap_frame_t *frame, vaddr_t addr)
{
    int hfun = (Clock >> 3) & 1, ptegnum = PtegNumber(addr, hfun);
    ppc_map_t *map = mmuvirtmap(addr);
    if(!map) return 0;
    map->pte.pteh = (map->pte.pteh & ~64) | (hfun << 6);
    PpcHashedPTE[ptegnum].block[Clock & 7] = map->pte;






    Clock++;
    __asm__("tlbie %0\n\tsync\n\tisync" : : "r" (addr));
    return 1;
}
