
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ppc_map_t ;
typedef int paddr_t ;
struct TYPE_3__ {scalar_t__* tree; } ;
typedef TYPE_1__ MmuVsidInfo ;


 size_t PPC_PAGE_NUMBER (int ) ;
 int * PpcPageTable ;
 TYPE_1__* findvsid (int) ;
 int freepage (int *) ;
 int freevsidtree (scalar_t__) ;

void freevsid(int vsid)
{
    int i;
    MmuVsidInfo *info = findvsid(vsid);
    if(!info) return;
    ppc_map_t *map = &PpcPageTable[PPC_PAGE_NUMBER((paddr_t)info)];
    for(i = 0; i < 256; i++)
    {
 if(info->tree[i])
     freevsidtree(info->tree[i]);
    }
    freepage(map);
}
