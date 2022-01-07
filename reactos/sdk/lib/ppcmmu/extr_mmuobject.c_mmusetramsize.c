
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_map_t ;
typedef scalar_t__ paddr_t ;


 scalar_t__ FirstUsablePage ;
 int NextPage ;
 int PPC_PAGE_NUMBER (scalar_t__) ;
 int * PpcPageTable ;
 scalar_t__ RamSize ;

void mmusetramsize(paddr_t ramsize)
{
    ppc_map_t *last_map = &PpcPageTable[PPC_PAGE_NUMBER(ramsize)];
    if(!RamSize)
    {
 RamSize = ramsize;
 FirstUsablePage = (paddr_t)last_map;
 NextPage = PPC_PAGE_NUMBER(FirstUsablePage) + 1;
    }
}
