
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VARIANT ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;


 int HRESULT_FROM_WIN32 (int ) ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,int const*,int ,int *,int ,int ,int *,int *,int *) ;
 int S_OK ;
 int TRACE (char*,int ,int ) ;
 int VT_UI4 ;
 int debugstr_w (int const*) ;
 int set_variant (int ,int ,int *,int *) ;

__attribute__((used)) static HRESULT create_key( HKEY root, const WCHAR *subkey, VARIANT *retval )
{
    LONG res;
    HKEY hkey;

    TRACE("%p, %s\n", root, debugstr_w(subkey));

    res = RegCreateKeyExW( root, subkey, 0, ((void*)0), 0, 0, ((void*)0), &hkey, ((void*)0) );
    set_variant( VT_UI4, res, ((void*)0), retval );
    if (!res)
    {
        RegCloseKey( hkey );
        return S_OK;
    }
    return HRESULT_FROM_WIN32( res );
}
