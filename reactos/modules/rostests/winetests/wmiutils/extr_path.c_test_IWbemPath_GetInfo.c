
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int IWbemPath ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IWbemPath_GetInfo (int *,int,int*) ;
 int IWbemPath_Release (int *) ;
 scalar_t__ IWbemPath_SetText (int *,int ,int ) ;
 scalar_t__ S_OK ;
 int WBEMPATH_CREATE_ACCEPT_ALL ;
 int WBEMPATH_INFO_ANON_LOCAL_MACHINE ;
 int WBEMPATH_INFO_CIM_COMPLIANT ;
 int WBEMPATH_INFO_HAS_SUBSCOPES ;
 int WBEMPATH_INFO_IS_CLASS_REF ;
 int WBEMPATH_INFO_IS_INST_REF ;
 int WBEMPATH_INFO_PATH_HAD_SERVER ;
 int WBEMPATH_INFO_SERVER_NAMESPACE_ONLY ;
 int WBEMPATH_INFO_V2_COMPLIANT ;
 scalar_t__ WBEM_E_INVALID_PARAMETER ;
 int * create_path () ;
 int ok (int,char*,scalar_t__) ;
 int path1 ;
 int path12 ;
 int path17 ;
 scalar_t__ wine_dbgstr_longlong (int) ;

__attribute__((used)) static void test_IWbemPath_GetInfo(void)
{
    IWbemPath *path;
    HRESULT hr;
    ULONGLONG resp;

    if (!(path = create_path())) return;

    hr = IWbemPath_GetInfo( path, 0, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = IWbemPath_GetInfo( path, 1, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = IWbemPath_GetInfo( path, 0, &resp );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_SERVER_NAMESPACE_ONLY),
        "got %s\n", wine_dbgstr_longlong(resp) );

    hr = IWbemPath_SetText( path, WBEMPATH_CREATE_ACCEPT_ALL, path17 );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IWbemPath_GetInfo( path, 0, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = IWbemPath_GetInfo( path, 1, ((void*)0) );
    ok( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = IWbemPath_GetInfo( path, 0, &resp );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_IS_INST_REF |
                 WBEMPATH_INFO_HAS_SUBSCOPES | WBEMPATH_INFO_V2_COMPLIANT |
                 WBEMPATH_INFO_CIM_COMPLIANT | WBEMPATH_INFO_PATH_HAD_SERVER),
        "got %s\n", wine_dbgstr_longlong(resp) );

    IWbemPath_Release( path );
    if (!(path = create_path())) return;

    hr = IWbemPath_SetText( path, WBEMPATH_CREATE_ACCEPT_ALL, path12 );
    ok( hr == S_OK, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = IWbemPath_GetInfo( path, 0, &resp );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_IS_CLASS_REF |
                 WBEMPATH_INFO_HAS_SUBSCOPES | WBEMPATH_INFO_V2_COMPLIANT |
                 WBEMPATH_INFO_CIM_COMPLIANT),
        "got %s\n", wine_dbgstr_longlong(resp) );

    hr = IWbemPath_SetText( path, WBEMPATH_CREATE_ACCEPT_ALL, path1 );
    ok( hr == S_OK, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = IWbemPath_GetInfo( path, 0, &resp );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_SERVER_NAMESPACE_ONLY),
        "got %s\n", wine_dbgstr_longlong(resp) );

    IWbemPath_Release( path );
}
