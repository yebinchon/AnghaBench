
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_8__ {scalar_t__ syskind; } ;
struct TYPE_7__ {scalar_t__ typekind; int cbSizeVft; int guid; scalar_t__ cFuncs; } ;
typedef scalar_t__ TYPEKIND ;
typedef TYPE_1__ TYPEATTR ;
typedef TYPE_2__ TLIBATTR ;
typedef scalar_t__ SYSKIND ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int HREFTYPE ;
typedef int GUID ;


 scalar_t__ FAILED (int ) ;
 int ITypeInfo_GetContainingTypeLib (int *,int **,int *) ;
 int ITypeInfo_GetRefTypeInfo (int *,int ,int **) ;
 int ITypeInfo_GetRefTypeOfImplType (int *,int,int *) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 int ITypeLib_GetLibAttr (int *,TYPE_2__**) ;
 int ITypeLib_Release (int *) ;
 int ITypeLib_ReleaseTLibAttr (int *,TYPE_2__*) ;
 scalar_t__ SYS_WIN64 ;
 scalar_t__ TKIND_DISPATCH ;

__attribute__((used)) static HRESULT get_iface_info(ITypeInfo **typeinfo, WORD *funcs, WORD *parentfuncs,
        GUID *parentiid)
{
    ITypeInfo *real_typeinfo, *parentinfo;
    TYPEATTR *typeattr;
    ITypeLib *typelib;
    TLIBATTR *libattr;
    TYPEKIND typekind;
    HREFTYPE reftype;
    SYSKIND syskind;
    HRESULT hr;




    hr = ITypeInfo_GetTypeAttr(*typeinfo, &typeattr);
    if (FAILED(hr))
        return hr;
    typekind = typeattr->typekind;
    ITypeInfo_ReleaseTypeAttr(*typeinfo, typeattr);
    if (typekind == TKIND_DISPATCH)
    {
        hr = ITypeInfo_GetRefTypeOfImplType(*typeinfo, -1, &reftype);
        if (FAILED(hr))
            return hr;

        hr = ITypeInfo_GetRefTypeInfo(*typeinfo, reftype, &real_typeinfo);
        if (FAILED(hr))
            return hr;

        ITypeInfo_Release(*typeinfo);
        *typeinfo = real_typeinfo;
    }

    hr = ITypeInfo_GetContainingTypeLib(*typeinfo, &typelib, ((void*)0));
    if (FAILED(hr))
        return hr;

    hr = ITypeLib_GetLibAttr(typelib, &libattr);
    if (FAILED(hr))
    {
        ITypeLib_Release(typelib);
        return hr;
    }
    syskind = libattr->syskind;
    ITypeLib_ReleaseTLibAttr(typelib, libattr);
    ITypeLib_Release(typelib);

    hr = ITypeInfo_GetTypeAttr(*typeinfo, &typeattr);
    if (FAILED(hr))
        return hr;
    *funcs = typeattr->cFuncs;
    *parentfuncs = typeattr->cbSizeVft / (syskind == SYS_WIN64 ? 8 : 4) - *funcs;
    ITypeInfo_ReleaseTypeAttr(*typeinfo, typeattr);

    hr = ITypeInfo_GetRefTypeOfImplType(*typeinfo, 0, &reftype);
    if (FAILED(hr))
        return hr;
    hr = ITypeInfo_GetRefTypeInfo(*typeinfo, reftype, &parentinfo);
    if (FAILED(hr))
        return hr;
    hr = ITypeInfo_GetTypeAttr(parentinfo, &typeattr);
    if (FAILED(hr))
        return hr;
    *parentiid = typeattr->guid;
    ITypeInfo_ReleaseTypeAttr(parentinfo, typeattr);
    ITypeInfo_Release(parentinfo);

    return hr;
}
