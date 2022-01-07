
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
 int LIBID_WbemScripting ;
 int LOCALE_SYSTEM_DEFAULT ;
 int LoadRegTypeLib (int *,int,int,int ,int **) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int * wbemdisp_tid_id ;
 int ** wbemdisp_typeinfo ;
 int wbemdisp_typelib ;

__attribute__((used)) static HRESULT get_typeinfo( enum type_id tid, ITypeInfo **ret )
{
    HRESULT hr;

    if (!wbemdisp_typelib)
    {
        ITypeLib *typelib;

        hr = LoadRegTypeLib( &LIBID_WbemScripting, 1, 2, LOCALE_SYSTEM_DEFAULT, &typelib );
        if (FAILED( hr ))
        {
            ERR( "LoadRegTypeLib failed: %08x\n", hr );
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)&wbemdisp_typelib, typelib, ((void*)0) ))
            ITypeLib_Release( typelib );
    }
    if (!wbemdisp_typeinfo[tid])
    {
        ITypeInfo *typeinfo;

        hr = ITypeLib_GetTypeInfoOfGuid( wbemdisp_typelib, wbemdisp_tid_id[tid], &typeinfo );
        if (FAILED( hr ))
        {
            ERR( "GetTypeInfoOfGuid(%s) failed: %08x\n", debugstr_guid(wbemdisp_tid_id[tid]), hr );
            return hr;
        }
        if (InterlockedCompareExchangePointer( (void **)(wbemdisp_typeinfo + tid), typeinfo, ((void*)0) ))
            ITypeInfo_Release( typeinfo );
    }
    *ret = wbemdisp_typeinfo[tid];
    ITypeInfo_AddRef( *ret );
    return S_OK;
}
