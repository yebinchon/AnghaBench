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
typedef  int /*<<< orphan*/  data ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int**,int,int**,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_FUNCTION ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL ret;
    DWORD size;
    HANDLE handle;
    static DWORD data[16];

    handle = FUNC1( "\\\\.\\c:", GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0 );
    if (handle == INVALID_HANDLE_VALUE)
    {
        FUNC5("can't open c: drive %u\n", FUNC3());
        return;
    }
    size = 0;
    ret = FUNC2( handle, IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS, &data,
                           sizeof(data), &data, sizeof(data), &size, NULL );
    if (!ret && FUNC3() == ERROR_INVALID_FUNCTION)
    {
        FUNC5("IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS not supported\n");
        FUNC0( handle );
        return;
    }
    FUNC4(ret, "DeviceIoControl failed %u\n", FUNC3());
    FUNC4(size == 32, "expected 32, got %u\n", size);
    FUNC0( handle );
}