
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int PICE_free (int *) ;
 int ** apSymbols ;
 size_t ulNumSymbolsLoaded ;

void UnloadSymbols()
{
    ULONG i;

 ENTER_FUNC();

    if(ulNumSymbolsLoaded)
 {
        for(i=0;i<ulNumSymbolsLoaded;i++)
        {
      DPRINT((0,"freeing [%u] %x\n",i,apSymbols[i]));
      PICE_free(apSymbols[i]);
            apSymbols[i] = ((void*)0);
        }
        ulNumSymbolsLoaded = 0;
 }
    LEAVE_FUNC();
}
