
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef size_t LONG ;
typedef scalar_t__ HRESULT ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BSTR ;


 size_t ERROR_NO_MORE_ITEMS ;
 size_t ERROR_SUCCESS ;
 scalar_t__ E_OUTOFMEMORY ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int *) ;
 size_t RegEnumValueW (int *,size_t,int*,int*,int *,int*,int *,int *) ;
 size_t RegOpenKeyExW (int *,int const*,int ,int ,int **) ;
 size_t RegQueryInfoKeyW (int *,int *,int *,int *,int *,int *,int *,int*,int*,int *,int *,int *) ;
 scalar_t__ S_OK ;
 int SysAllocString (int*) ;
 int SysFreeString (int) ;
 int TRACE (char*,int *,int ) ;
 int VT_UI4 ;
 int debugstr_w (int const*) ;
 int free_bstr_array (int*,size_t) ;
 int* heap_alloc (int) ;
 int heap_free (int*) ;
 int set_variant (int ,size_t,int *,int *) ;
 scalar_t__ to_bstr_array (int*,size_t,int *) ;
 scalar_t__ to_i4_array (int*,size_t,int *) ;

__attribute__((used)) static HRESULT enum_values( HKEY root, const WCHAR *subkey, VARIANT *names, VARIANT *types, VARIANT *retval )
{
    HKEY hkey = ((void*)0);
    HRESULT hr = S_OK;
    BSTR *value_names = ((void*)0);
    DWORD count, buflen, len, *value_types = ((void*)0);
    LONG res, i = 0;
    WCHAR *buf = ((void*)0);

    TRACE("%p, %s\n", root, debugstr_w(subkey));

    if ((res = RegOpenKeyExW( root, subkey, 0, KEY_QUERY_VALUE, &hkey ))) goto done;
    if ((res = RegQueryInfoKeyW( hkey, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &count, &buflen, ((void*)0), ((void*)0), ((void*)0) )))
        goto done;

    hr = E_OUTOFMEMORY;
    if (!(buf = heap_alloc( (buflen + 1) * sizeof(WCHAR) ))) goto done;
    if (!(value_names = heap_alloc( count * sizeof(BSTR) ))) goto done;
    if (!(value_types = heap_alloc( count * sizeof(DWORD) ))) goto done;

    hr = S_OK;
    for (;;)
    {
        len = buflen + 1;
        res = RegEnumValueW( hkey, i, buf, &len, ((void*)0), &value_types[i], ((void*)0), ((void*)0) );
        if (res == ERROR_NO_MORE_ITEMS)
        {
            if (i) res = ERROR_SUCCESS;
            break;
        }
        if (res) break;
        if (!(value_names[i] = SysAllocString( buf )))
        {
            for (i--; i >= 0; i--) SysFreeString( value_names[i] );
            hr = E_OUTOFMEMORY;
            break;
        }
        i++;
    }
    if (hr == S_OK && !res)
    {
        hr = to_bstr_array( value_names, i, names );
        free_bstr_array( value_names, i );
        if (hr == S_OK) hr = to_i4_array( value_types, i, types );
    }

done:
    set_variant( VT_UI4, res, ((void*)0), retval );
    RegCloseKey( hkey );
    heap_free( value_names );
    heap_free( value_types );
    heap_free( buf );
    return hr;
}
