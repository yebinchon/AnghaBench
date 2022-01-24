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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/ * HDSKSPC ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FILEOP_COPY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SPDSL_IGNORE_DISK ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    char buffer[MAX_PATH];
    HDSKSPC handle;
    DWORD size;
    BOOL ret;

    handle = FUNC2(NULL, 0, SPDSL_IGNORE_DISK);
    FUNC7(handle != NULL,"Expected SetupCreateDiskSpaceListA to return a valid handle\n");

    ret = FUNC4(handle, NULL, 0, NULL);
    FUNC7(ret, "Expected SetupQueryDrivesInDiskSpaceListA to succeed\n");

    size = 0;
    ret = FUNC4(handle, NULL, 0, &size);
    FUNC7(ret, "Expected SetupQueryDrivesInDiskSpaceListA to succeed\n");
    FUNC7(size == 1, "Expected size 1, got %u\n", size);

    ret = FUNC1(handle, "F:\\random-file.dat", 0, FILEOP_COPY, 0, 0);
    FUNC7(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(handle, "G:\\random-file.dat", 0, FILEOP_COPY, 0, 0);
    FUNC7(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(handle, "G:\\random-file2.dat", 0, FILEOP_COPY, 0, 0);
    FUNC7(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    ret = FUNC1(handle, "X:\\random-file.dat", 0, FILEOP_COPY, 0, 0);
    FUNC7(ret, "Expected SetupAddToDiskSpaceListA to succeed\n");

    size = 0;
    ret = FUNC4(handle, NULL, 0, &size);
    FUNC7(ret, "Expected SetupQueryDrivesInDiskSpaceListA to succeed\n");
    FUNC7(size == 10, "Expected size 10, got %u\n", size);

    size = 0;
    ret = FUNC4(handle, buffer, 0, &size);
    FUNC7(!ret, "Expected SetupQueryDrivesInDiskSpaceListA to fail\n");
    FUNC7(size == 4, "Expected size 4, got %u\n", size);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "Expected GetLastError() to return ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());

    size = 0;
    ret = FUNC4(handle, buffer, 4, &size);
    FUNC7(!ret, "Expected SetupQueryDrivesInDiskSpaceListA to fail\n");
    FUNC7(size == 7, "Expected size 7, got %u\n", size);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "Expected GetLastError() to return ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());

    size = 0;
    ret = FUNC4(handle, buffer, 7, &size);
    FUNC7(!ret, "Expected SetupQueryDrivesInDiskSpaceListA to fail\n");
    FUNC7(size == 10, "Expected size 10, got %u\n", size);
    FUNC7(FUNC0() == ERROR_INSUFFICIENT_BUFFER,
       "Expected GetLastError() to return ERROR_INSUFFICIENT_BUFFER, got %u\n", FUNC0());

    size = 0;
    FUNC6(buffer, 0xff, sizeof(buffer));
    ret = FUNC4(handle, buffer, sizeof(buffer), &size);
    FUNC7(ret, "Expected SetupQueryDrivesInDiskSpaceListA to succeed\n");
    FUNC7(size == 10, "Expected size 10, got %u\n", size);
    FUNC7(!FUNC5("f:\0g:\0x:\0\0", buffer, 10), "Device list does not match\n");

    FUNC6(buffer, 0xff, sizeof(buffer));
    ret = FUNC4(handle, buffer, sizeof(buffer), NULL);
    FUNC7(ret, "Expected SetupQueryDrivesInDiskSpaceListA to succeed\n");
    FUNC7(!FUNC5("f:\0g:\0x:\0\0", buffer, 10), "Device list does not match\n");

    FUNC7(FUNC3(handle),
       "Expected SetupDestroyDiskSpaceList to succeed\n");
}