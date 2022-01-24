#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  int CIMTYPE ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int CIM_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MAX_COMPUTERNAME_LENGTH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_BSTR ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WBEM_E_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC23( IWbemServices *services )
{
    static const WCHAR backslashW[] = {'\\',0};
    static const WCHAR memorytypeW[] = {'M','e','m','o','r','y','T','y','p','e',0};
    static const WCHAR modelW[] = {'M','o','d','e','l',0};
    static const WCHAR nameW[] = {'N','a','m','e',0};
    static const WCHAR usernameW[] = {'U','s','e','r','N','a','m','e',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'C','o','m','p','u','t','e','r','S','y','s','t','e','m',0};
    BSTR wql = FUNC8( wqlW ), query = FUNC8( queryW );
    IEnumWbemClassObject *result;
    IWbemClassObject *service;
    VARIANT value;
    CIMTYPE type;
    HRESULT hr;
    WCHAR compname[MAX_COMPUTERNAME_LENGTH + 1];
    WCHAR username[128];
    DWORD len, count;

    len = FUNC0( compname );
    if (!FUNC1( compname, &len ))
        compname[0] = 0;

    FUNC16( username, compname );
    FUNC14( username, backslashW );
    len = FUNC0( username ) - FUNC17( username );
    if (!FUNC2( username + FUNC17( username ), &len ))
        username[0] = 0;

    if (!compname[0] || !username[0])
    {
        FUNC19( "Failed to get user or computer name\n" );
        goto out;
    }

    hr = FUNC7( services, wql, query, 0, NULL, &result );
    if (hr != S_OK)
    {
        FUNC21( "Win32_ComputerSystem not available\n" );
        goto out;
    }

    hr = FUNC3( result, 10000, 1, &service, &count );
    FUNC18( hr == S_OK, "got %08x\n", hr );

    type = 0xdeadbeef;
    FUNC13( &value );
    hr = FUNC5( service, memorytypeW, 0, &value, &type, NULL );
    FUNC18( hr == WBEM_E_NOT_FOUND, "got %08x\n", hr );

    type = 0xdeadbeef;
    FUNC13( &value );
    hr = FUNC5( service, modelW, 0, &value, &type, NULL );
    FUNC18( hr == S_OK, "failed to get model %08x\n", hr );
    FUNC18( FUNC11( &value ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC11( &value ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC20( "model: %s\n", FUNC22(FUNC10( &value )) );
    FUNC12( &value );

    type = 0xdeadbeef;
    FUNC13( &value );
    hr = FUNC5( service, nameW, 0, &value, &type, NULL );
    FUNC18( hr == S_OK, "failed to get computer name %08x\n", hr );
    FUNC18( FUNC11( &value ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC11( &value ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC18( !FUNC15( FUNC10( &value ), compname ), "got %s, expected %s\n", FUNC22(FUNC10(&value)), FUNC22(compname) );
    FUNC12( &value );

    type = 0xdeadbeef;
    FUNC13( &value );
    hr = FUNC5( service, usernameW, 0, &value, &type, NULL );
    FUNC18( hr == S_OK, "failed to get computer name %08x\n", hr );
    FUNC18( FUNC11( &value ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC11( &value ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC18( !FUNC15( FUNC10( &value ), username ), "got %s, expected %s\n", FUNC22(FUNC10(&value)), FUNC22(username) );
    FUNC12( &value );

    FUNC6( service );
    FUNC4( result );
out:
    FUNC9( query );
    FUNC9( wql );
}