
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {scalar_t__* leaves; } ;
typedef TYPE_1__ MmuVsidTree ;
typedef TYPE_2__ MmuFreeTree ;


 TYPE_2__* FreeTree ;
 int freepage (scalar_t__) ;

void freevsidtree(MmuVsidTree *tree)
{
    int i;
    for(i = 0; i < 256; i++)
 if(tree->leaves[i])
     freepage(tree->leaves[i]);
    MmuFreeTree *NextFreeTree = (MmuFreeTree *)tree;
    NextFreeTree->next = FreeTree;
    FreeTree = NextFreeTree;
}
