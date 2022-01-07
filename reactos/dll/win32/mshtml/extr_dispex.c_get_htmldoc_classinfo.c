
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeInfo ;
typedef int HRESULT ;


 int CLSID_HTMLDocument ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int *,int **) ;
 int load_typelib () ;
 int typelib ;

HRESULT get_htmldoc_classinfo(ITypeInfo **typeinfo)
{
    HRESULT hres;

    if (!typelib)
        hres = load_typelib();
    if (!typelib)
        return hres;

    hres = ITypeLib_GetTypeInfoOfGuid(typelib, &CLSID_HTMLDocument, typeinfo);
    if(FAILED(hres))
        ERR("GetTypeInfoOfGuid failed: %08x\n", hres);
    return hres;
}
