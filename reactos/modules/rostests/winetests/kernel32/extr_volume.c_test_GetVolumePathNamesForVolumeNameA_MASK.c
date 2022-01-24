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
typedef  int /*<<< orphan*/  volume ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INVALID_NAME ; 
 int ERROR_MORE_DATA ; 
 int FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL ret;
    char volume[MAX_PATH], buffer[MAX_PATH];
    DWORD len, error;

    if (!&pGetVolumePathNamesForVolumeNameA || !&pGetVolumeNameForVolumeMountPointA)
    {
        FUNC9("required functions not found\n");
        return;
    }

    ret = FUNC5( "c:\\", volume, sizeof(volume) );
    FUNC4(ret, "failed to get volume name %u\n", FUNC0());
    FUNC8("c:\\ -> %s\n", volume);

    FUNC1( 0xdeadbeef );
    ret = FUNC6( NULL, NULL, 0, NULL );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    FUNC1( 0xdeadbeef );
    ret = FUNC6( "", NULL, 0, NULL );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    FUNC1( 0xdeadbeef );
    ret = FUNC6( volume, NULL, 0, NULL );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_MORE_DATA, "expected ERROR_MORE_DATA got %u\n", error);

    FUNC1( 0xdeadbeef );
    ret = FUNC6( volume, buffer, 0, NULL );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_MORE_DATA, "expected ERROR_MORE_DATA got %u\n", error);

    FUNC3( buffer, 0xff, sizeof(buffer) );
    ret = FUNC6( volume, buffer, sizeof(buffer), NULL );
    FUNC4(ret, "failed to get path names %u\n", FUNC0());
    FUNC4(!FUNC7( "C:\\", buffer ), "expected \"\\C:\" got \"%s\"\n", buffer);
    FUNC4(!buffer[4], "expected double null-terminated buffer\n");

    len = 0;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( NULL, NULL, 0, &len );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( NULL, NULL, sizeof(buffer), &len );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( NULL, buffer, sizeof(buffer), &len );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    FUNC1( 0xdeadbeef );
    ret = FUNC6( NULL, buffer, sizeof(buffer), &len );
    error = FUNC0();
    FUNC4(!ret, "expected failure\n");
    FUNC4(error == ERROR_INVALID_NAME, "expected ERROR_INVALID_NAME got %u\n", error);

    len = 0;
    FUNC3( buffer, 0xff, sizeof(buffer) );
    ret = FUNC6( volume, buffer, sizeof(buffer), &len );
    FUNC4(ret, "failed to get path names %u\n", FUNC0());
    FUNC4(len == 5 || FUNC2(len == 2), "expected 5 got %u\n", len);
    FUNC4(!FUNC7( "C:\\", buffer ), "expected \"\\C:\" got \"%s\"\n", buffer);
    FUNC4(!buffer[4], "expected double null-terminated buffer\n");
}