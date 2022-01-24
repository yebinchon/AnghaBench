#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sid_admin_buffer ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_2__ {int Control; scalar_t__ Owner; scalar_t__ Group; } ;
typedef  int /*<<< orphan*/  SID ;
typedef  TYPE_1__ SECURITY_DESCRIPTOR_RELATIVE ;
typedef  int /*<<< orphan*/  PSID ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int HRESULT ;
typedef  int DWORD ;
typedef  int CIMTYPE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CIM_FLAG_ARRAY ; 
 int CIM_UINT32 ; 
 int CIM_UINT8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int SECURITY_MAX_SID_SIZE ; 
 int SE_SELF_RELATIVE ; 
 scalar_t__ FUNC6 (int) ; 
 int S_OK ; 
 int FUNC7 (int /*<<< orphan*/ ,void**) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int VT_ARRAY ; 
 int VT_I4 ; 
 int VT_UI1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int WBEM_E_ACCESS_DENIED ; 
 int /*<<< orphan*/  WinBuiltinAdministratorsSid ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19( IWbemServices *services )
{
    static const WCHAR systemsecurityW[] = {'_','_','S','y','s','t','e','m','S','e','c','u','r','i','t','y',0};
    static const WCHAR getsdW[] = {'G','e','t','S','D',0};
    static const WCHAR returnvalueW[] = {'R','e','t','u','r','n','V','a','l','u','e',0};
    static const WCHAR sdW[] = {'S','D',0};
    BSTR class = FUNC9( systemsecurityW ), method;
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

    hr = FUNC5( services, class, 0, NULL, &reg, NULL );
    if (hr != S_OK)
    {
        FUNC18( "__SystemSecurity not available\n" );
        return;
    }
    FUNC3( reg );

    sid_size = sizeof(sid_admin_buffer);
    ret = FUNC0( WinBuiltinAdministratorsSid, NULL, sid_admin, &sid_size );
    FUNC17( ret, "CreateWellKnownSid failed\n" );

    out = NULL;
    method = FUNC9( getsdW );
    hr = FUNC4( services, class, method, 0, NULL, NULL, &out, NULL );
    FUNC17( hr == S_OK || hr == WBEM_E_ACCESS_DENIED, "failed to execute method %08x\n", hr );
    FUNC10( method );

    if (FUNC6(hr))
    {
        type = 0xdeadbeef;
        FUNC16( &retval );
        hr = FUNC2( out, returnvalueW, 0, &retval, &type, NULL );
        FUNC17( hr == S_OK, "failed to get return value %08x\n", hr );
        FUNC17( FUNC14( &retval ) == VT_I4, "unexpected variant type 0x%x\n", FUNC14( &retval ) );
        FUNC17( !FUNC12( &retval ), "unexpected error %u\n", FUNC13( &retval ) );
        FUNC17( type == CIM_UINT32, "unexpected type 0x%x\n", type );

        type = 0xdeadbeef;
        FUNC16( &var_sd );
        hr = FUNC2( out, sdW, 0, &var_sd, &type, NULL );
        FUNC17( hr == S_OK, "failed to get names %08x\n", hr );
        FUNC17( FUNC14( &var_sd ) == (VT_UI1|VT_ARRAY), "unexpected variant type 0x%x\n", FUNC14( &var_sd ) );
        FUNC17( type == (CIM_UINT8|CIM_FLAG_ARRAY), "unexpected type 0x%x\n", type );

        hr = FUNC7( FUNC11( &var_sd ), &data );
        FUNC17( hr == S_OK, "SafeArrayAccessData failed %x\n", hr );
        if (FUNC6(hr))
        {
            sd = data;

            FUNC17( (sd->Control & SE_SELF_RELATIVE) == SE_SELF_RELATIVE, "relative flag unset\n" );
            FUNC17( sd->Owner != 0, "no owner SID\n");
            FUNC17( sd->Group != 0, "no owner SID\n");
            FUNC17( FUNC1( (PSID)((LPBYTE)sd + sd->Owner), sid_admin ), "unexpected owner SID\n" );
            FUNC17( FUNC1( (PSID)((LPBYTE)sd + sd->Group), sid_admin ), "unexpected group SID\n" );

            hr = FUNC8( FUNC11( &var_sd ) );
            FUNC17( hr == S_OK, "SafeArrayUnaccessData failed %x\n", hr );
        }

        FUNC15( &var_sd );
        FUNC3( out );
    }
    else if (hr == WBEM_E_ACCESS_DENIED)
        FUNC18( "insufficient privs to test __SystemSecurity\n" );

    FUNC10( class );
}