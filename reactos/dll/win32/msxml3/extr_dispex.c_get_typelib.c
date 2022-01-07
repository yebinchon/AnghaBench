
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; int iid; } ;
typedef int ITypeLib ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LoadRegTypeLib (int ,int ,int ,int ,int **) ;
 int S_OK ;
 TYPE_1__* lib_ids ;
 int ** typelib ;

__attribute__((used)) static HRESULT get_typelib(unsigned lib, ITypeLib **tl)
{
    HRESULT hres;

    if(!typelib[lib]) {
        hres = LoadRegTypeLib(lib_ids[lib].iid, lib_ids[lib].major, 0, LOCALE_SYSTEM_DEFAULT, tl);
        if(FAILED(hres)) {
            ERR("LoadRegTypeLib failed: %08x\n", hres);
            return hres;
        }

        if (InterlockedCompareExchangePointer((void**)&typelib[lib], *tl, ((void*)0)))
            ITypeLib_Release(*tl);
    }

    *tl = typelib[lib];
    return S_OK;
}
