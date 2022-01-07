
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_map_t ;
typedef int paddr_t ;


 int PPC_PAGE_ADDR (int *) ;
 int PpcPageTable ;
 int * allocpage () ;

paddr_t mmunewpage()
{
    ppc_map_t *PagePtr = allocpage();
    if (!PagePtr) return 0;
    return PPC_PAGE_ADDR(PagePtr - PpcPageTable);
}
