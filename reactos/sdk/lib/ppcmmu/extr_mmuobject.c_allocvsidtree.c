
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ppc_map_t ;
struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef int MmuVsidTree ;


 TYPE_1__* FreeTree ;
 int * NextTreePage ;
 scalar_t__ PPC_PAGE_ADDR (int *) ;
 int PpcPageTable ;
 int TreeAlloc ;
 int * allocpage () ;

MmuVsidTree *allocvsidtree()
{
    if(FreeTree)
    {
 MmuVsidTree *result = (MmuVsidTree*)FreeTree;
 FreeTree = FreeTree->next;
 return result;
    }
    else if(TreeAlloc >= 3 || !NextTreePage)
    {
 ppc_map_t *map = allocpage();
 NextTreePage = (MmuVsidTree*)PPC_PAGE_ADDR((map - PpcPageTable));
 TreeAlloc = 1;
 return NextTreePage;
    }
    else
    {
 return &NextTreePage[TreeAlloc++];
    }
}
