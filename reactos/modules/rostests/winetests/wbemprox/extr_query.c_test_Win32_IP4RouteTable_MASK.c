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
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int CIMTYPE ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int CIM_SINT32 ; 
 int CIM_STRING ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int VT_BSTR ; 
 int VT_I4 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC16( IWbemServices *services )
{
    static const WCHAR destinationW[] = {'D','e','s','t','i','n','a','t','i','o','n',0};
    static const WCHAR interfaceindexW[] = {'I','n','t','e','r','f','a','c','e','I','n','d','e','x',0};
    static const WCHAR nexthopW[] = {'N','e','x','t','H','o','p',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'I','P','4','R','o','u','t','e','T','a','b','l','e',0};
    BSTR wql = FUNC5( wqlW ), query = FUNC5( queryW );
    IEnumWbemClassObject *result;
    IWbemClassObject *obj;
    VARIANT val;
    CIMTYPE type;
    HRESULT hr;
    DWORD count;

    hr = FUNC4( services, wql, query, 0, NULL, &result );
    if (hr != S_OK)
    {
        FUNC14( "Win32_IP4RouteTable not available\n" );
        return;
    }

    for (;;)
    {
        hr = FUNC0( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, destinationW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "failed to get destination %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC13( "destination %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, interfaceindexW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "failed to get interface index %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_I4, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_SINT32, "unexpected type 0x%x\n", type );
        FUNC13( "interfaceindex %d\n", FUNC8( &val ) );
        FUNC10( &val );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, nexthopW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "failed to get nexthop %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC13( "nexthop %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        FUNC3( obj );
    }

    FUNC1( result );
    FUNC6( query );
    FUNC6( wql );
}