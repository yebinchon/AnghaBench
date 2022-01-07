
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef int LONG ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BSTR ;


 int ARRAY_SIZE (int *) ;
 int ERROR_NO_MORE_ITEMS ;
 int ERROR_SUCCESS ;
 scalar_t__ E_OUTOFMEMORY ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int RegCloseKey (int ) ;
 int RegEnumKeyW (int ,int,int *,int) ;
 int RegOpenKeyExW (int ,int const*,int ,int ,int *) ;
 scalar_t__ S_OK ;
 int SysAllocString (int *) ;
 int SysFreeString (int ) ;
 int TRACE (char*,int ,int ) ;
 int VT_UI4 ;
 int debugstr_w (int const*) ;
 int free_bstr_array (int *,int) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int * heap_realloc (int *,int) ;
 int set_variant (int ,int,int *,int *) ;
 scalar_t__ to_bstr_array (int *,int,int *) ;

__attribute__((used)) static HRESULT enum_key( HKEY root, const WCHAR *subkey, VARIANT *names, VARIANT *retval )
{
    HKEY hkey;
    HRESULT hr = S_OK;
    WCHAR buf[256];
    BSTR *strings, *tmp;
    DWORD count = 2, len = ARRAY_SIZE( buf );
    LONG res, i = 0;

    TRACE("%p, %s\n", root, debugstr_w(subkey));

    if (!(strings = heap_alloc( count * sizeof(BSTR) ))) return E_OUTOFMEMORY;
    if ((res = RegOpenKeyExW( root, subkey, 0, KEY_ENUMERATE_SUB_KEYS, &hkey )))
    {
        set_variant( VT_UI4, res, ((void*)0), retval );
        heap_free( strings );
        return S_OK;
    }
    for (;;)
    {
        if (i >= count)
        {
            count *= 2;
            if (!(tmp = heap_realloc( strings, count * sizeof(BSTR) )))
            {
                RegCloseKey( hkey );
                return E_OUTOFMEMORY;
            }
            strings = tmp;
        }
        if ((res = RegEnumKeyW( hkey, i, buf, len )) == ERROR_NO_MORE_ITEMS)
        {
            if (i) res = ERROR_SUCCESS;
            break;
        }
        if (res) break;
        if (!(strings[i] = SysAllocString( buf )))
        {
            for (i--; i >= 0; i--) SysFreeString( strings[i] );
            hr = E_OUTOFMEMORY;
            break;
        }
        i++;
    }
    if (hr == S_OK && !res)
    {
        hr = to_bstr_array( strings, i, names );
        free_bstr_array( strings, i );
    }
    set_variant( VT_UI4, res, ((void*)0), retval );
    RegCloseKey( hkey );
    heap_free( strings );
    return hr;
}
