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
typedef  scalar_t__ DWORD ;
typedef  int CIMTYPE ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int CIM_UINT16 ; 
 int CIM_UINT64 ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,scalar_t__*) ; 
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
    static const WCHAR capacityW[] = {'C','a','p','a','c','i','t','y',0};
    static const WCHAR memorytypeW[] = {'M','e','m','o','r','y','T','y','p','e',0};
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'P','h','y','s','i','c','a','l','M','e','m','o','r','y',0};
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
        FUNC14( "Win32_PhysicalMemory not available\n" );
        return;
    }

    hr = FUNC0( result, 10000, 1, &obj, &count );
    FUNC12( hr == S_OK, "got %08x\n", hr );

    if (count > 0)
    {
        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, capacityW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "failed to get capacity %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_UINT64, "unexpected type 0x%x\n", type );
        FUNC13( "capacity %s\n", FUNC15(FUNC7( &val )) );
        FUNC10( &val );

        type = 0xdeadbeef;
        FUNC11( &val );
        hr = FUNC2( obj, memorytypeW, 0, &val, &type, NULL );
        FUNC12( hr == S_OK, "failed to get memory type %08x\n", hr );
        FUNC12( FUNC9( &val ) == VT_I4, "unexpected variant type 0x%x\n", FUNC9( &val ) );
        FUNC12( type == CIM_UINT16, "unexpected type 0x%x\n", type );
        FUNC13( "memorytype %u\n", FUNC8( &val ) );
        FUNC10( &val );

        FUNC3( obj );
    }
    FUNC1( result );
    FUNC6( query );
    FUNC6( wql );
}