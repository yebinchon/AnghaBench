
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef char WCHAR ;
typedef int ULONG ;
typedef int IWbemPath ;
typedef int HRESULT ;


 int IWbemPath_GetNamespaceAt (int *,int,int*,char*) ;
 int IWbemPath_Release (int *) ;
 int IWbemPath_SetText (int *,int ,int ) ;
 int S_OK ;
 int WBEMPATH_CREATE_ACCEPT_ALL ;
 int WBEM_E_INVALID_PARAMETER ;
 int * create_path () ;
 int lstrcmpW (char*,char const*) ;
 int lstrlenW (char const*) ;
 int ok (int,char*,int) ;
 int path17 ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_IWbemPath_GetNamespaceAt(void)
{
    static const WCHAR rootW[] = {'r','o','o','t',0};
    static const WCHAR cimv2W[] = {'c','i','m','v','2',0};
    IWbemPath *path;
    HRESULT hr;
    WCHAR buf[32];
    ULONG len;

    if (!(path = create_path())) return;

    hr = IWbemPath_GetNamespaceAt( path, 0, ((void*)0), ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = 0;
    hr = IWbemPath_GetNamespaceAt( path, 0, &len, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = IWbemPath_GetNamespaceAt( path, 0, &len, buf );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = IWbemPath_GetNamespaceAt( path, 0, &len, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );
    ok( len == sizeof(buf) / sizeof(buf[0]), "unexpected length %u\n", len );

    hr = IWbemPath_SetText( path, WBEMPATH_CREATE_ACCEPT_ALL, path17 );
    ok( hr == S_OK, "got %08x\n", hr );

    len = 0;
    hr = IWbemPath_GetNamespaceAt( path, 2, &len, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = IWbemPath_GetNamespaceAt( path, 0, &len, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );
    ok( len == sizeof(buf) / sizeof(buf[0]), "unexpected length %u\n", len );

    buf[0] = 0;
    len = sizeof(buf) / sizeof(buf[0]);
    hr = IWbemPath_GetNamespaceAt( path, 0, &len, buf );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( !lstrcmpW( buf, rootW ), "unexpected buffer contents %s\n", wine_dbgstr_w(buf) );
    ok( len == lstrlenW( rootW ) + 1, "unexpected length %u\n", len );

    buf[0] = 0;
    len = sizeof(buf) / sizeof(buf[0]);
    hr = IWbemPath_GetNamespaceAt( path, 1, &len, buf );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( !lstrcmpW( buf, cimv2W ), "unexpected buffer contents %s\n", wine_dbgstr_w(buf) );
    ok( len == lstrlenW( cimv2W ) + 1, "unexpected length %u\n", len );

    IWbemPath_Release( path );
}
