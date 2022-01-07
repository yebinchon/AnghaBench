
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ hModule; } ;
typedef TYPE_1__* PDYN_FUNCS ;
typedef scalar_t__ HMODULE ;


 int FreeLibrary (scalar_t__) ;

VOID
UnloadDynamicImports(PDYN_FUNCS DynFuncs)
{
    if (DynFuncs->hModule)
    {
        FreeLibrary(DynFuncs->hModule);
        DynFuncs->hModule = (HMODULE)0;
    }
}
