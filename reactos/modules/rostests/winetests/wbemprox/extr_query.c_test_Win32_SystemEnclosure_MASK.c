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
typedef  int /*<<< orphan*/  ULONG ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int CIMTYPE ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int CIM_BOOLEAN ; 
 int CIM_FLAG_ARRAY ; 
 int CIM_STRING ; 
 int CIM_UINT16 ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int) ; 
 int S_OK ; 
 int FUNC6 (int /*<<< orphan*/ ,void**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int VT_ARRAY ; 
 int VT_BOOL ; 
 int VT_BSTR ; 
 int VT_I4 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 char const* wqlW ; 

__attribute__((used)) static void FUNC21( IWbemServices *services )
{
    static const WCHAR queryW[] =
        {'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','W','i','n','3','2','_',
         'S','y','s','t','e','m','E','n','c','l','o','s','u','r','e',0};
    static const WCHAR captionW[] = {'C','a','p','t','i','o','n',0};
    static const WCHAR chassistypesW[] = {'C','h','a','s','s','i','s','T','y','p','e','s',0};
    static const WCHAR descriptionW[] = {'D','e','s','c','r','i','p','t','i','o','n',0};
    static const WCHAR lockpresentW[] = {'L','o','c','k','P','r','e','s','e','n','t',0};
    static const WCHAR manufacturerW[] = {'M','a','n','u','f','a','c','t','u','r','e','r',0};
    static const WCHAR nameW[] = {'N','a','m','e',0};
    static const WCHAR tagW[] = {'T','a','g',0};
    BSTR wql = FUNC10( wqlW ), query = FUNC10( queryW );
    IEnumWbemClassObject *result;
    IWbemClassObject *obj;
    CIMTYPE type;
    ULONG count;
    VARIANT val;
    DWORD *data;
    HRESULT hr;

    hr = FUNC4( services, wql, query, 0, NULL, &result );
    FUNC18( hr == S_OK, "IWbemServices_ExecQuery failed %08x\n", hr );

    hr = FUNC0( result, 10000, 1, &obj, &count );
    FUNC18( hr == S_OK, "IEnumWbemClassObject_Next failed %08x\n", hr );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, captionW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get caption %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC19( "caption: %s\n", FUNC20(FUNC14( &val )) );
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, chassistypesW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get chassis types %08x\n", hr );
    FUNC18( FUNC15( &val ) == (VT_I4|VT_ARRAY), "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == (CIM_UINT16|CIM_FLAG_ARRAY), "unexpected type 0x%x\n", type );
    hr = FUNC6( FUNC12( &val ), (void **)&data );
    FUNC18( hr == S_OK, "SafeArrayAccessData failed %x\n", hr );
    if (FUNC5(hr))
    {
        LONG i, lower, upper;

        hr = FUNC7( FUNC12( &val ), 1, &lower );
        FUNC18( hr == S_OK, "SafeArrayGetLBound failed %x\n", hr );
        hr = FUNC8( FUNC12( &val ), 1, &upper );
        FUNC18( hr == S_OK, "SafeArrayGetUBound failed %x\n", hr );
        if (FUNC15( &val ) == (VT_I4|VT_ARRAY))
        {
            for (i = 0; i < upper - lower + 1; i++)
                FUNC19( "chassis type: %u\n", data[i] );
        }
        hr = FUNC9( FUNC12( &val ) );
        FUNC18( hr == S_OK, "SafeArrayUnaccessData failed %x\n", hr );
    }
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, descriptionW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get description %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC19( "description: %s\n", FUNC20(FUNC14( &val )) );
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, lockpresentW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get lockpresent %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BOOL, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_BOOLEAN, "unexpected type 0x%x\n", type );
    FUNC19( "lockpresent: %u\n", FUNC13( &val ) );
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, manufacturerW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get manufacturer %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC19( "manufacturer: %s\n", FUNC20(FUNC14( &val )) );
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, nameW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get name %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC19( "name: %s\n", FUNC20(FUNC14( &val )) );
    FUNC16( &val );

    type = 0xdeadbeef;
    FUNC17( &val );
    hr = FUNC2( obj, tagW, 0, &val, &type, NULL );
    FUNC18( hr == S_OK, "failed to get tag %08x\n", hr );
    FUNC18( FUNC15( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC15( &val ) );
    FUNC18( type == CIM_STRING, "unexpected type 0x%x\n", type );
    FUNC19( "tag: %s\n", FUNC20(FUNC14( &val )) );
    FUNC16( &val );

    FUNC3( obj );
    FUNC1( result );
    FUNC11( query );
    FUNC11( wql );
}