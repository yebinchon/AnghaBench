
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int IWbemServices ;
typedef int IWbemClassObject ;
typedef int IEnumWbemClassObject ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CIMTYPE ;
typedef int BSTR ;


 int CIM_SINT32 ;
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
 int VT_I4 ;
 int V_BSTR (int *) ;
 int V_I4 (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int ok (int,char*,int) ;
 int trace (char*,int ) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (int ) ;
 char const* wqlW ;

__attribute__((used)) static void test_Win32_IP4RouteTable( IWbemServices *services )
{
    static const WCHAR destinationW[] = {'D','e','s','t','i','n','a','t','i','o','n',0};
    static const WCHAR interfaceindexW[] = {'I','n','t','e','r','f','a','c','e','I','n','d','e','x',0};
    static const WCHAR nexthopW[] = {'N','e','x','t','H','o','p',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'I','P','4','R','o','u','t','e','T','a','b','l','e',0};
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
        win_skip( "Win32_IP4RouteTable not available\n" );
        return;
    }

    for (;;)
    {
        hr = IEnumWbemClassObject_Next( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, destinationW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get destination %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "destination %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, interfaceindexW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get interface index %08x\n", hr );
        ok( V_VT( &val ) == VT_I4, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_SINT32, "unexpected type 0x%x\n", type );
        trace( "interfaceindex %d\n", V_I4( &val ) );
        VariantClear( &val );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, nexthopW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get nexthop %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "nexthop %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        IWbemClassObject_Release( obj );
    }

    IEnumWbemClassObject_Release( result );
    SysFreeString( query );
    SysFreeString( wql );
}
