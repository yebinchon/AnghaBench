
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef char WCHAR ;
typedef int VARIANT ;
typedef int IWbemServices ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CIMTYPE ;
typedef int BSTR ;


 int CIM_STRING ;
 int IEnumWbemClassObject_Next (int *,int,int,int **,int *) ;
 int IEnumWbemClassObject_Release (int *) ;
 int IWbemClassObject_Get (int *,char const*,int ,int *,int*,int *) ;
 int IWbemClassObject_Release (int *) ;
 int IWbemServices_ExecQuery (int *,int ,int ,int ,int *,int **) ;
 int S_OK ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 int VT_BSTR ;
 int VT_NULL ;
 int V_BSTR (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,int) ;
 int trace (char*,int ) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int ) ;
 char const* wqlW ;

__attribute__((used)) static void test_Win32_Printer( IWbemServices *services )
{
    static const WCHAR deviceidW[] =
        {'D','e','v','i','c','e','I','d',0};
    static const WCHAR locationW[] =
        {'L','o','c','a','t','i','o','n',0};
    static const WCHAR portnameW[] =
        {'P','o','r','t','N','a','m','e',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','r','i','n','t','e','r',0};
    BSTR wql = SysAllocString( wqlW ), query = SysAllocString( queryW );
    IEnumWbemClassObject *result;
    IWbemClassObject *obj;
    VARIANT val;
    CIMTYPE type;
    HRESULT hr;
    DWORD count;

    hr = IWbemServices_ExecQuery( services, wql, query, 0, ((void*)0), &result );
    if (hr != S_OK)
    {
        win_skip( "Win32_Printer not available\n" );
        return;
    }

    for (;;)
    {
        hr = IEnumWbemClassObject_Next( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        memset( &val, 0, sizeof(val) );
        hr = IWbemClassObject_Get( obj, deviceidW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "deviceid %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        memset( &val, 0, sizeof(val) );
        hr = IWbemClassObject_Get( obj, locationW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR || V_VT( &val ) == VT_NULL, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "location %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        memset( &val, 0, sizeof(val) );
        hr = IWbemClassObject_Get( obj, portnameW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "portname %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        IWbemClassObject_Release( obj );
    }

    IEnumWbemClassObject_Release( result );
    SysFreeString( query );
    SysFreeString( wql );
}
