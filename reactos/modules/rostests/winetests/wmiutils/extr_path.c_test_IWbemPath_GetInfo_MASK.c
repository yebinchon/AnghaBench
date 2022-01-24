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
typedef  int ULONGLONG ;
typedef  int /*<<< orphan*/  IWbemPath ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  WBEMPATH_CREATE_ACCEPT_ALL ; 
 int WBEMPATH_INFO_ANON_LOCAL_MACHINE ; 
 int WBEMPATH_INFO_CIM_COMPLIANT ; 
 int WBEMPATH_INFO_HAS_SUBSCOPES ; 
 int WBEMPATH_INFO_IS_CLASS_REF ; 
 int WBEMPATH_INFO_IS_INST_REF ; 
 int WBEMPATH_INFO_PATH_HAD_SERVER ; 
 int WBEMPATH_INFO_SERVER_NAMESPACE_ONLY ; 
 int WBEMPATH_INFO_V2_COMPLIANT ; 
 scalar_t__ WBEM_E_INVALID_PARAMETER ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  path1 ; 
 int /*<<< orphan*/  path12 ; 
 int /*<<< orphan*/  path17 ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
    IWbemPath *path;
    HRESULT hr;
    ULONGLONG resp;

    if (!(path = FUNC3())) return;

    hr = FUNC0( path, 0, NULL );
    FUNC4( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = FUNC0( path, 1, NULL );
    FUNC4( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = FUNC0( path, 0, &resp );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    FUNC4( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_SERVER_NAMESPACE_ONLY),
        "got %s\n", FUNC5(resp) );

    hr = FUNC2( path, WBEMPATH_CREATE_ACCEPT_ALL, path17 );
    FUNC4( hr == S_OK, "got %08x\n", hr );

    hr = FUNC0( path, 0, NULL );
    FUNC4( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    hr = FUNC0( path, 1, NULL );
    FUNC4( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = FUNC0( path, 0, &resp );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    FUNC4( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_IS_INST_REF |
                 WBEMPATH_INFO_HAS_SUBSCOPES | WBEMPATH_INFO_V2_COMPLIANT |
                 WBEMPATH_INFO_CIM_COMPLIANT | WBEMPATH_INFO_PATH_HAD_SERVER),
        "got %s\n", FUNC5(resp) );

    FUNC1( path );
    if (!(path = FUNC3())) return;

    hr = FUNC2( path, WBEMPATH_CREATE_ACCEPT_ALL, path12 );
    FUNC4( hr == S_OK, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = FUNC0( path, 0, &resp );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    FUNC4( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_IS_CLASS_REF |
                 WBEMPATH_INFO_HAS_SUBSCOPES | WBEMPATH_INFO_V2_COMPLIANT |
                 WBEMPATH_INFO_CIM_COMPLIANT),
        "got %s\n", FUNC5(resp) );

    hr = FUNC2( path, WBEMPATH_CREATE_ACCEPT_ALL, path1 );
    FUNC4( hr == S_OK, "got %08x\n", hr );

    resp = 0xdeadbeef;
    hr = FUNC0( path, 0, &resp );
    FUNC4( hr == S_OK, "got %08x\n", hr );
    FUNC4( resp == (WBEMPATH_INFO_ANON_LOCAL_MACHINE | WBEMPATH_INFO_SERVER_NAMESPACE_ONLY),
        "got %s\n", FUNC5(resp) );

    FUNC1( path );
}