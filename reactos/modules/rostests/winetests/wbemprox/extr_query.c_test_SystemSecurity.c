
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sid_admin_buffer ;
typedef char WCHAR ;
typedef int VARIANT ;
struct TYPE_2__ {int Control; scalar_t__ Owner; scalar_t__ Group; } ;
typedef int SID ;
typedef TYPE_1__ SECURITY_DESCRIPTOR_RELATIVE ;
typedef int PSID ;
typedef scalar_t__ LPBYTE ;
typedef int IWbemServices ;
typedef int IWbemClassObject ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CIMTYPE ;
typedef int BYTE ;
typedef int BSTR ;
typedef int BOOL ;


 int CIM_FLAG_ARRAY ;
 int CIM_UINT32 ;
 int CIM_UINT8 ;
 int CreateWellKnownSid (int ,int *,int *,int*) ;
 int EqualSid (int ,int *) ;
 int IWbemClassObject_Get (int *,char const*,int ,int *,int*,int *) ;
 int IWbemClassObject_Release (int *) ;
 int IWbemServices_ExecMethod (int *,int ,int ,int ,int *,int *,int **,int *) ;
 int IWbemServices_GetObject (int *,int ,int ,int *,int **,int *) ;
 int SECURITY_MAX_SID_SIZE ;
 int SE_SELF_RELATIVE ;
 scalar_t__ SUCCEEDED (int) ;
 int S_OK ;
 int SafeArrayAccessData (int ,void**) ;
 int SafeArrayUnaccessData (int ) ;
 int SysAllocString (char const*) ;
 int SysFreeString (int ) ;
 int VT_ARRAY ;
 int VT_I4 ;
 int VT_UI1 ;
 int V_ARRAY (int *) ;
 int V_I4 (int *) ;
 int V_UI4 (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int WBEM_E_ACCESS_DENIED ;
 int WinBuiltinAdministratorsSid ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SystemSecurity( IWbemServices *services )
{
    static const WCHAR systemsecurityW[] = {'_','_','S','y','s','t','e','m','S','e','c','u','r','i','t','y',0};
    static const WCHAR getsdW[] = {'G','e','t','S','D',0};
    static const WCHAR returnvalueW[] = {'R','e','t','u','r','n','V','a','l','u','e',0};
    static const WCHAR sdW[] = {'S','D',0};
    BSTR class = SysAllocString( systemsecurityW ), method;
    IWbemClassObject *reg, *out;
    VARIANT retval, var_sd;
    void *data;
    SECURITY_DESCRIPTOR_RELATIVE *sd;
    CIMTYPE type;
    HRESULT hr;
    BYTE sid_admin_buffer[SECURITY_MAX_SID_SIZE];
    SID *sid_admin = (SID*)sid_admin_buffer;
    DWORD sid_size;
    BOOL ret;

    hr = IWbemServices_GetObject( services, class, 0, ((void*)0), &reg, ((void*)0) );
    if (hr != S_OK)
    {
        win_skip( "__SystemSecurity not available\n" );
        return;
    }
    IWbemClassObject_Release( reg );

    sid_size = sizeof(sid_admin_buffer);
    ret = CreateWellKnownSid( WinBuiltinAdministratorsSid, ((void*)0), sid_admin, &sid_size );
    ok( ret, "CreateWellKnownSid failed\n" );

    out = ((void*)0);
    method = SysAllocString( getsdW );
    hr = IWbemServices_ExecMethod( services, class, method, 0, ((void*)0), ((void*)0), &out, ((void*)0) );
    ok( hr == S_OK || hr == WBEM_E_ACCESS_DENIED, "failed to execute method %08x\n", hr );
    SysFreeString( method );

    if (SUCCEEDED(hr))
    {
        type = 0xdeadbeef;
        VariantInit( &retval );
        hr = IWbemClassObject_Get( out, returnvalueW, 0, &retval, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get return value %08x\n", hr );
        ok( V_VT( &retval ) == VT_I4, "unexpected variant type 0x%x\n", V_VT( &retval ) );
        ok( !V_I4( &retval ), "unexpected error %u\n", V_UI4( &retval ) );
        ok( type == CIM_UINT32, "unexpected type 0x%x\n", type );

        type = 0xdeadbeef;
        VariantInit( &var_sd );
        hr = IWbemClassObject_Get( out, sdW, 0, &var_sd, &type, ((void*)0) );
        ok( hr == S_OK, "failed to get names %08x\n", hr );
        ok( V_VT( &var_sd ) == (VT_UI1|VT_ARRAY), "unexpected variant type 0x%x\n", V_VT( &var_sd ) );
        ok( type == (CIM_UINT8|CIM_FLAG_ARRAY), "unexpected type 0x%x\n", type );

        hr = SafeArrayAccessData( V_ARRAY( &var_sd ), &data );
        ok( hr == S_OK, "SafeArrayAccessData failed %x\n", hr );
        if (SUCCEEDED(hr))
        {
            sd = data;

            ok( (sd->Control & SE_SELF_RELATIVE) == SE_SELF_RELATIVE, "relative flag unset\n" );
            ok( sd->Owner != 0, "no owner SID\n");
            ok( sd->Group != 0, "no owner SID\n");
            ok( EqualSid( (PSID)((LPBYTE)sd + sd->Owner), sid_admin ), "unexpected owner SID\n" );
            ok( EqualSid( (PSID)((LPBYTE)sd + sd->Group), sid_admin ), "unexpected group SID\n" );

            hr = SafeArrayUnaccessData( V_ARRAY( &var_sd ) );
            ok( hr == S_OK, "SafeArrayUnaccessData failed %x\n", hr );
        }

        VariantClear( &var_sd );
        IWbemClassObject_Release( out );
    }
    else if (hr == WBEM_E_ACCESS_DENIED)
        win_skip( "insufficient privs to test __SystemSecurity\n" );

    SysFreeString( class );
}
