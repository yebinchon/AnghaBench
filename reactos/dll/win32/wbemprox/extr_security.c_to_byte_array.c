
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int SAFEARRAY ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SafeArrayAccessData (int *,void**) ;
 int * SafeArrayCreateVector (int,int ,int ) ;
 int SafeArrayDestroy (int *) ;
 int SafeArrayUnaccessData (int *) ;
 int VT_ARRAY ;
 int VT_UI1 ;
 int memcpy (void*,void*,int ) ;
 int set_variant (int,int ,int *,int *) ;

__attribute__((used)) static HRESULT to_byte_array( void *data, DWORD size, VARIANT *var )
{
    SAFEARRAY *sa;
    void *sadata;
    HRESULT hr;

    if (!(sa = SafeArrayCreateVector( VT_UI1, 0, size ))) return E_OUTOFMEMORY;

    hr = SafeArrayAccessData( sa, &sadata );

    if (SUCCEEDED(hr))
    {
        memcpy( sadata, data, size );

        SafeArrayUnaccessData( sa );
    }
    else
    {
        SafeArrayDestroy( sa );
        return hr;
    }

    set_variant( VT_UI1|VT_ARRAY, 0, sa, var );
    return S_OK;
}
