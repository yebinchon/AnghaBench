
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {scalar_t__ size; int name; scalar_t__ BaseAddress; struct TYPE_5__* next; } ;
typedef TYPE_1__* PDEBUG_MODULE ;


 scalar_t__ BuildModuleList () ;
 int DPRINT (int ) ;
 TYPE_1__* pdebug_module_head ;
 TYPE_1__* pdebug_module_tail ;

PDEBUG_MODULE FindModuleFromAddress(ULONG addr)
{
    PDEBUG_MODULE pd;
    ULONG start,end;

    DPRINT((0,"FindModuleFromAddress()\n"));
    if(BuildModuleList())
    {
        pd = pdebug_module_head;
        do
        {
   if(pd->size)
   {
                start = (ULONG)pd->BaseAddress;
                end = start + pd->size;
                DPRINT((0,"FindModuleFromAddress(): %S %x-%x\n",pd->name,start,end));
                if(addr>=start && addr<end)
                {
                    DPRINT((0,"FindModuleFromAddress(): found %S\n",pd->name));
                    return pd;
                }
            }
        }while((pd = pd->next)!=pdebug_module_tail);
    }

    return ((void*)0);
}
