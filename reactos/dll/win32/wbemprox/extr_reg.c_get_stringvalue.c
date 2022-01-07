
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int * BSTR ;


 int E_OUTOFMEMORY ;
 int RRF_RT_REG_SZ ;
 scalar_t__ RegGetValueW (int ,int const*,int const*,int ,int *,int *,int*) ;
 int S_OK ;
 int * SysAllocStringLen (int *,int) ;
 int SysFreeString (int *) ;
 int TRACE (char*,int ,int ,int ) ;
 int VT_BSTR ;
 int VT_UI4 ;
 int debugstr_w (int const*) ;
 int set_variant (int ,scalar_t__,int *,int *) ;

__attribute__((used)) static HRESULT get_stringvalue( HKEY root, const WCHAR *subkey, const WCHAR *name, VARIANT *value, VARIANT *retval )
{
    HRESULT hr = S_OK;
    BSTR str = ((void*)0);
    DWORD size;
    LONG res;

    TRACE("%p, %s, %s\n", root, debugstr_w(subkey), debugstr_w(name));

    if ((res = RegGetValueW( root, subkey, name, RRF_RT_REG_SZ, ((void*)0), ((void*)0), &size ))) goto done;
    if (!(str = SysAllocStringLen( ((void*)0), size / sizeof(WCHAR) - 1 )))
    {
        hr = E_OUTOFMEMORY;
        goto done;
    }
    if (!(res = RegGetValueW( root, subkey, name, RRF_RT_REG_SZ, ((void*)0), str, &size )))
        set_variant( VT_BSTR, 0, str, value );

done:
    set_variant( VT_UI4, res, ((void*)0), retval );
    if (res) SysFreeString( str );
    return hr;
}
