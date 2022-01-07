
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int SAFEARRAY ;
typedef size_t LONG ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * SafeArrayCreateVector (int,int ,size_t) ;
 int SafeArrayDestroy (int *) ;
 int SafeArrayPutElement (int *,size_t*,size_t*) ;
 int VT_ARRAY ;
 int VT_I4 ;
 int set_variant (int,int ,int *,int *) ;

__attribute__((used)) static HRESULT to_i4_array( DWORD *values, DWORD count, VARIANT *var )
{
    SAFEARRAY *sa;
    HRESULT hr;
    LONG i;

    if (!(sa = SafeArrayCreateVector( VT_I4, 0, count ))) return E_OUTOFMEMORY;
    for (i = 0; i < count; i++)
    {
        if ((hr = SafeArrayPutElement( sa, &i, &values[i] )) != S_OK)
        {
            SafeArrayDestroy( sa );
            return hr;
        }
    }
    set_variant( VT_I4|VT_ARRAY, 0, sa, var );
    return S_OK;
}
