
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeLib ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LIBID_Scripting ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LoadRegTypeLib (int *,int,int ,int ,int **) ;
 int S_OK ;
 scalar_t__ typelib ;

__attribute__((used)) static HRESULT load_typelib(void)
{
    HRESULT hres;
    ITypeLib *tl;

    if(typelib)
        return S_OK;

    hres = LoadRegTypeLib(&LIBID_Scripting, 1, 0, LOCALE_SYSTEM_DEFAULT, &tl);
    if(FAILED(hres)) {
        ERR("LoadRegTypeLib failed: %08x\n", hres);
        return hres;
    }

    if(InterlockedCompareExchangePointer((void**)&typelib, tl, ((void*)0)))
        ITypeLib_Release(tl);
    return hres;
}
