
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT (int ) ;
 int RevirtualizeBreakpointsForModule (scalar_t__) ;
 int old_cleanup_module () ;
 scalar_t__ pModJustFreed ;

void other_module_cleanup_module(void)
{
    DPRINT((0,"other_module_cleanup_module()\n"));

    if(old_cleanup_module)
    {
        DPRINT((0,"other_module_cleanup_module(): calling %x\n",(ULONG)old_cleanup_module));
        old_cleanup_module();
    }

    if(pModJustFreed)
    {
        DPRINT((0,"other_module_cleanup_module(): calling RevirtualizeBreakpointsForModule(%x)\n",(ULONG)pModJustFreed));
        RevirtualizeBreakpointsForModule(pModJustFreed);
    }
}
