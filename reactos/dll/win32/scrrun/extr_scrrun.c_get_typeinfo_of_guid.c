
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int GUID ;


 scalar_t__ FAILED (int ) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int const*,int **) ;
 int load_typelib () ;
 int typelib ;

__attribute__((used)) static HRESULT get_typeinfo_of_guid(const GUID *guid, ITypeInfo **tinfo)
{
    HRESULT hres;

    if(FAILED(hres = load_typelib()))
        return hres;

    return ITypeLib_GetTypeInfoOfGuid(typelib, guid, tinfo);
}
