
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * foo; } ;
struct TYPE_9__ {scalar_t__ hModule; TYPE_1__ fn; } ;
struct TYPE_8__ {int ** Functions; int Library; } ;
typedef int * PVOID ;
typedef TYPE_2__* PDYN_MODULE ;
typedef TYPE_3__* PDYN_FUNCS ;
typedef int * LPSTR ;
typedef scalar_t__ HMODULE ;
typedef int DYN_FUNCS ;
typedef int BOOL ;


 int FALSE ;
 int FreeLibrary (scalar_t__) ;
 int * GetProcAddress (scalar_t__,int *) ;
 scalar_t__ LoadLibraryW (int ) ;
 int TRUE ;
 int ZeroMemory (TYPE_3__*,int) ;

BOOL
LoadDynamicImports(PDYN_MODULE Module,
                   PDYN_FUNCS DynFuncs)
{
    LPSTR *fname;
    PVOID *fn;

    ZeroMemory(DynFuncs, sizeof(DYN_FUNCS));

    DynFuncs->hModule = LoadLibraryW(Module->Library);
    if (!DynFuncs->hModule)
    {
        return FALSE;
    }

    fn = &DynFuncs->fn.foo;


    for (fname = Module->Functions; *fname != ((void*)0); fname++)
    {
        *fn = GetProcAddress(DynFuncs->hModule, *fname);
        if (*fn == ((void*)0))
        {
            FreeLibrary(DynFuncs->hModule);
            DynFuncs->hModule = (HMODULE)0;

            return FALSE;
        }

        fn++;
    }

    return TRUE;
}
