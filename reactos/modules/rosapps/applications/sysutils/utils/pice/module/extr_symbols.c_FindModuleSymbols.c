
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ size; int name; scalar_t__ BaseAddress; struct TYPE_9__* next; } ;
struct TYPE_8__ {int name; } ;
typedef TYPE_1__ PICE_SYMBOLFILE_HEADER ;
typedef TYPE_2__* PDEBUG_MODULE ;


 scalar_t__ BuildModuleList () ;
 int DPRINT (int ) ;
 scalar_t__ PICE_wcsicmp (int ,int ) ;
 scalar_t__ ValidityCheckSymbols (TYPE_1__*) ;
 TYPE_1__** apSymbols ;
 TYPE_2__* pdebug_module_head ;
 TYPE_2__* pdebug_module_tail ;
 scalar_t__ ulNumSymbolsLoaded ;

PICE_SYMBOLFILE_HEADER* FindModuleSymbols(ULONG addr)
{
    ULONG start,end,i;
 PDEBUG_MODULE pd = pdebug_module_head;

    DPRINT((0,"FindModuleSymbols(%x)\n",addr));
    if(BuildModuleList())
    {
        i=0;
        pd = pdebug_module_head;
        do
        {
   DPRINT((0,"pd: %x\n", pd));
            if(pd->size)
   {
                start = (ULONG)pd->BaseAddress;
                end = start + pd->size;
                DPRINT((0,"FindModuleSymbols(): %S %x-%x\n",pd->name,start,end));
                if(addr>=start && addr<end)
                {
                    DPRINT((0,"FindModuleSymbols(): address matches %S %x-%x\n",pd->name,start,end));
                    for(i=0;i<ulNumSymbolsLoaded;i++)
                    {
      DPRINT((0,"%S -", apSymbols[i]->name ));
                        if(PICE_wcsicmp(pd->name,apSymbols[i]->name) == 0)
      {
       if(ValidityCheckSymbols(apSymbols[i]))
                             return apSymbols[i];
       else
        return ((void*)0);
      }
                    }
                }
            }
        }while((pd = pd->next) != pdebug_module_tail);
    }

    return ((void*)0);
}
