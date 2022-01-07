
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


 int CIM_DATETIME ;
 int CIM_STRING ;
 int CIM_UINT32 ;
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
 int VT_NULL ;
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

__attribute__((used)) static void test_Win32_VideoController( IWbemServices *services )
{
    static const WCHAR configmanagererrorcodeW[] =
        {'C','o','n','f','i','g','M','a','n','a','g','e','r','E','r','r','o','r','C','o','d','e',0};
    static const WCHAR driverdateW[] =
        {'D','r','i','v','e','r','D','a','t','e',0};
    static const WCHAR installeddisplaydriversW[]=
        {'I','n','s','t','a','l','l','e','d','D','i','s','p','l','a','y','D','r','i','v','e','r','s',0};
    static const WCHAR statusW[] =
        {'S','t','a','t','u','s',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'V','i','d','e','o','C','o','n','t','r','o','l','l','e','r',0};
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
        win_skip( "Win32_VideoController not available\n" );
        return;
    }

    for (;;)
    {
        hr = IEnumWbemClassObject_Next( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, configmanagererrorcodeW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_I4, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_UINT32, "unexpected type 0x%x\n", type );
        trace( "configmanagererrorcode %d\n", V_I4( &val ) );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, driverdateW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_DATETIME, "unexpected type 0x%x\n", type );
        trace( "driverdate %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, installeddisplaydriversW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR || V_VT( &val ) == VT_NULL, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "installeddisplaydrivers %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, statusW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "got %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_STRING, "unexpected type 0x%x\n", type );
        trace( "status %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        IWbemClassObject_Release( obj );
    }

    IEnumWbemClassObject_Release( result );
    SysFreeString( query );
    SysFreeString( wql );
}
