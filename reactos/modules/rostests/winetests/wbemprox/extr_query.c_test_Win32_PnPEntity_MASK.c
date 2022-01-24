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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IWbemServices ;
typedef  int /*<<< orphan*/  IWbemClassObject ;
typedef  int /*<<< orphan*/  IEnumWbemClassObject ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ CIMTYPE ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ CIM_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VT_BSTR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ WBEM_S_FALSE ; 
 scalar_t__ WBEM_S_NO_ERROR ; 
 scalar_t__ WBEM_S_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC10( IWbemServices *services )
{
    HRESULT hr;
    IEnumWbemClassObject *enm;
    IWbemClassObject *obj;
    VARIANT val;
    CIMTYPE type;
    ULONG count, i;
    BSTR bstr;

    static WCHAR win32_pnpentityW[] = {'W','i','n','3','2','_','P','n','P','E','n','t','i','t','y',0};
    static const WCHAR deviceidW[] = {'D','e','v','i','c','e','I','d',0};

    bstr = FUNC5( win32_pnpentityW );

    hr = FUNC3( services, bstr, 0, NULL, &enm );
    FUNC9( hr == S_OK, "got %08x\n", hr );

    FUNC6( bstr );
    bstr = FUNC5( deviceidW );

    while (1)
    {
        hr = FUNC0( enm, 1000, 1, &obj, &count );
        FUNC9( (count == 1 && (hr == WBEM_S_FALSE || hr == WBEM_S_NO_ERROR)) ||
                (count == 0 && (hr == WBEM_S_FALSE || hr == WBEM_S_TIMEDOUT)),
                "got %08x with %u objects returned\n", hr, count );

        if (count == 0)
            break;

        for (i = 0; i < count; ++i)
        {
            hr = FUNC2( obj, bstr, 0, &val, &type, NULL );
            FUNC9( hr == S_OK, "got %08x\n", hr );

            if (FUNC4( hr ))
            {
                FUNC9( FUNC7( &val ) == VT_BSTR, "unexpected variant type 0x%x\n", FUNC7( &val ) );
                FUNC9( type == CIM_STRING, "unexpected type 0x%x\n", type );
                FUNC8( &val );
            }
        }
    }

    FUNC6( bstr );

    FUNC1( enm );
}