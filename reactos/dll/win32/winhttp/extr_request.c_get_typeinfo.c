
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum type_id { ____Placeholder_type_id } type_id ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,int ,...) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_AddRef (int *) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int ,int **) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LIBID_WinHttp ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LoadRegTypeLib (int *,int,int,int ,int **) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int * winhttp_tid_id ;
 int ** winhttp_typeinfo ;
 int winhttp_typelib ;

__attribute__((used)) static HRESULT get_typeinfo( enum type_id tid, ITypeInfo **ret )
{
    HRESULT hr;

    if (!winhttp_typelib)
    {
        ITypeLib *typelib;

        hr = LoadRegTypeLib( &LIBID_WinHttp, 5, 1, LOCALE_SYSTEM_DEFAULT, &typelib );
        if (FAILED(hr))
        {
            ERR("LoadRegTypeLib failed: %08x\n", hr);
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)&winhttp_typelib, typelib, ((void*)0) ))
            ITypeLib_Release( typelib );
    }
    if (!winhttp_typeinfo[tid])
    {
        ITypeInfo *typeinfo;

        hr = ITypeLib_GetTypeInfoOfGuid( winhttp_typelib, winhttp_tid_id[tid], &typeinfo );
        if (FAILED(hr))
        {
            ERR("GetTypeInfoOfGuid(%s) failed: %08x\n", debugstr_guid(winhttp_tid_id[tid]), hr);
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)(winhttp_typeinfo + tid), typeinfo, ((void*)0) ))
            ITypeInfo_Release( typeinfo );
    }
    *ret = winhttp_typeinfo[tid];
    ITypeInfo_AddRef(winhttp_typeinfo[tid]);
    return S_OK;
}
