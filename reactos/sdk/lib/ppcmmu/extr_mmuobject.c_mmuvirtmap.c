
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vaddr_t ;
typedef int ppc_map_t ;
struct TYPE_5__ {TYPE_1__** tree; } ;
struct TYPE_4__ {int ** leaves; } ;
typedef TYPE_1__ MmuVsidTree ;
typedef TYPE_2__ MmuVsidInfo ;


 TYPE_2__** Segs ;

ppc_map_t *mmuvirtmap(vaddr_t addr)
{
    int seg = (addr >> 28) & 15;
    MmuVsidInfo *seginfo = Segs[seg];
    MmuVsidTree *segtree = 0;
    if(!seginfo) return 0;
    segtree = seginfo->tree[(addr >> 20) & 255];
    if(!segtree) return 0;
    return segtree->leaves[(addr >> 12) & 255];
}
