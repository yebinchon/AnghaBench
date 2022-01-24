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
 int CIM_DATETIME ; 
 int CIM_STRING ; 
 int CIM_UINT32 ; 
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
 int VT_NULL ; 
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
        FUNC14( "Win32_VideoController not available\n" );
        return;
    }

    for (;;)
    {
        hr = FUNC0( result, 10000, 1, &obj, &count );
        if (hr != S_OK) break;

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, configmanagererrorcodeW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "got %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_I4, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_UINT32, "unexpected type 0x%x\n", type );
        FUNC13( "configmanagererrorcode %d\n", FUNC8( &val ) );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, driverdateW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "got %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_DATETIME, "unexpected type 0x%x\n", type );
        FUNC13( "driverdate %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, installeddisplaydriversW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "got %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR || FUNC9( &val ) == VT_NULL, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC13( "installeddisplaydrivers %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, statusW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "got %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_STRING, "unexpected type 0x%x\n", type );
        FUNC13( "status %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        FUNC3( obj );
    }

    FUNC1( result );
    FUNC6( query );
    FUNC6( wql );
}