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
typedef  int /*<<< orphan*/  buf ;
typedef  char WCHAR ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IWbemPath ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ S_OK ; 
 int WBEMPATH_INFO_ANON_LOCAL_MACHINE ; 
 int WBEMPATH_INFO_CIM_COMPLIANT ; 
 int WBEMPATH_INFO_HAS_SUBSCOPES ; 
 int WBEMPATH_INFO_IS_CLASS_REF ; 
 int WBEMPATH_INFO_V2_COMPLIANT ; 
 scalar_t__ WBEM_E_INVALID_PARAMETER ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    static const WCHAR classW[] = {'c','l','a','s','s',0};
    static const WCHAR emptyW[] = {0};
    IWbemPath *path;
    WCHAR buf[16];
    ULONG len;
    ULONGLONG flags;
    HRESULT hr;

    if (!(path = FUNC4())) return;

    hr = FUNC3( path, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = FUNC3( path, emptyW );
    FUNC6( hr == S_OK, "got %08x\n", hr );

    hr = FUNC3( path, classW );
    FUNC6( hr == S_OK, "got %08x\n", hr );

    buf[0] = 0;
    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, &len, buf );
    FUNC6( hr == S_OK, "got %08x\n", hr );
    FUNC6( !FUNC5( buf, classW ), "unexpected buffer contents %s\n", FUNC8(buf) );

    flags = 0;
    hr = FUNC1( path, 0, &flags );
    FUNC6( hr == S_OK, "got %08x\n", hr );
    FUNC6( flags == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_IS_CLASS_REF |
                  WBEMPATH_INFO_HAS_SUBSCOPES | WBEMPATH_INFO_V2_COMPLIANT |
                  WBEMPATH_INFO_CIM_COMPLIANT),
        "got %s\n", FUNC7(flags) );

    FUNC2( path );
}