
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
typedef scalar_t__ DWORD ;
typedef int CIMTYPE ;
typedef int BSTR ;


 int CIM_UINT16 ;
 int CIM_UINT64 ;
 int IEnumWbemClassObject_Next (int *,int,int,int **,scalar_t__*) ;
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

__attribute__((used)) static void test_Win32_PhysicalMemory( IWbemServices *services )
{
    static const WCHAR capacityW[] = {'C','a','p','a','c','i','t','y',0};
    static const WCHAR memorytypeW[] = {'M','e','m','o','r','y','T','y','p','e',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','h','y','s','i','c','a','l','M','e','m','o','r','y',0};
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
        win_skip( "Win32_PhysicalMemory not available\n" );
        return;
    }

    hr = IEnumWbemClassObject_Next( result, 10000, 1, &obj, &count );
    ok( hr == S_OK, "got %08x\n", hr );

    if (count > 0)
    {
        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, capacityW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get capacity %08x\n", hr );
        ok( V_VT( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_UINT64, "unexpected type 0x%x\n", type );
        trace( "capacity %s\n", wine_dbgstr_w(V_BSTR( &val )) );
        VariantClear( &val );

        type = 0xdeadbeef;
        VariantInit( &val );
        hr = IWbemClassObject_Get( obj, memorytypeW, 0, &val, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get memory type %08x\n", hr );
        ok( V_VT( &val ) == VT_I4, "unexpected variant type 0x%x\n", V_VT( &val ) );
        ok( type == CIM_UINT16, "unexpected type 0x%x\n", type );
        trace( "memorytype %u\n", V_I4( &val ) );
        VariantClear( &val );

        IWbemClassObject_Release( obj );
    }
    IEnumWbemClassObject_Release( result );
    SysFreeString( query );
    SysFreeString( wql );
}
