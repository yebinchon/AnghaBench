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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IWbemPath ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int /*<<< orphan*/  WBEMPATH_CREATE_ACCEPT_ALL ; 
 int WBEM_E_INVALID_PARAMETER ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  path17 ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    static const WCHAR rootW[] = {'r','o','o','t',0};
    static const WCHAR cimv2W[] = {'c','i','m','v','2',0};
    IWbemPath *path;
    HRESULT hr;
    WCHAR buf[32];
    ULONG len;

    if (!(path = FUNC3())) return;

    hr = FUNC0( path, 0, NULL, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = 0;
    hr = FUNC0( path, 0, &len, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, 0, &len, buf );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, 0, &len, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );
    FUNC6( len == sizeof(buf) / sizeof(buf[0]), "unexpected length %u\n", len );

    hr = FUNC2( path, WBEMPATH_CREATE_ACCEPT_ALL, path17 );
    FUNC6( hr == S_OK, "got %08x\n", hr );

    len = 0;
    hr = FUNC0( path, 2, &len, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );

    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, 0, &len, NULL );
    FUNC6( hr == WBEM_E_INVALID_PARAMETER, "got %08x\n", hr );
    FUNC6( len == sizeof(buf) / sizeof(buf[0]), "unexpected length %u\n", len );

    buf[0] = 0;
    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, 0, &len, buf );
    FUNC6( hr == S_OK, "got %08x\n", hr );
    FUNC6( !FUNC4( buf, rootW ), "unexpected buffer contents %s\n", FUNC7(buf) );
    FUNC6( len == FUNC5( rootW ) + 1, "unexpected length %u\n", len );

    buf[0] = 0;
    len = sizeof(buf) / sizeof(buf[0]);
    hr = FUNC0( path, 1, &len, buf );
    FUNC6( hr == S_OK, "got %08x\n", hr );
    FUNC6( !FUNC4( buf, cimv2W ), "unexpected buffer contents %s\n", FUNC7(buf) );
    FUNC6( len == FUNC5( cimv2W ) + 1, "unexpected length %u\n", len );

    FUNC1( path );
}