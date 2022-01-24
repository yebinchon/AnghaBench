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
typedef  int /*<<< orphan*/  val ;
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
 int VT_NULL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC15( IWbemServices *services )
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
        FUNC13( "Win32_Printer not available\n" );
        return;
    }

    for (;;)
    {
        hr = FUNC0( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        FUNC10( &val, 0, sizeof(val) );
        hr = FUNC2( obj, deviceidW, 0, &val, &type, NULL );
        FUNC11( hr == S_OK, "got %08x\n", hr );
        FUNC11( FUNC8( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC8( &val ) );
        FUNC11( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC12( "deviceid %s\n", FUNC14(FUNC7( &val )) );
        FUNC9( &val );

        type = 0xdeadbeef;
        FUNC10( &val, 0, sizeof(val) );
        hr = FUNC2( obj, locationW, 0, &val, &type, NULL );
        FUNC11( hr == S_OK, "got %08x\n", hr );
        FUNC11( FUNC8( &val ) == VT_BSTR || FUNC8( &val ) == VT_NULL, "unexpected variant type 0x%x\n", FUNC8( &val ) );
        FUNC11( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC12( "location %s\n", FUNC14(FUNC7( &val )) );
        FUNC9( &val );

        type = 0xdeadbeef;
        FUNC10( &val, 0, sizeof(val) );
        hr = FUNC2( obj, portnameW, 0, &val, &type, NULL );
        FUNC11( hr == S_OK, "got %08x\n", hr );
        FUNC11( FUNC8( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC8( &val ) );
        FUNC11( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC12( "portname %s\n", FUNC14(FUNC7( &val )) );
        FUNC9( &val );

        FUNC3( obj );
    }

    FUNC1( result );
    FUNC6( query );
    FUNC6( wql );
}