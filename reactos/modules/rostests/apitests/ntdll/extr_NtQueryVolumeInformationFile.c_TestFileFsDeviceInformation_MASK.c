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
typedef  int /*<<< orphan*/  VOID ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  FILE_FS_DEVICE_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FileFsDeviceInformation ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int STATUS_ACCESS_VIOLATION ; 
 int STATUS_INFO_LENGTH_MISMATCH ; 
 int STATUS_INVALID_HANDLE ; 
 int STATUS_INVALID_INFO_CLASS ; 
 int STATUS_OBJECT_TYPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

__attribute__((used)) static
VOID
FUNC4(HANDLE handle)
{
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_FS_DEVICE_INFORMATION FileFsDevice;
    NTSTATUS status;

    /*Testing VALID handle, with NULL IN parameters*/
    FUNC2(0xdeadb33f);
    status = FUNC1(handle, NULL, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    FUNC3(status == STATUS_ACCESS_VIOLATION, "Expected STATUS_ACCESS_VIOLATION, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdeadb33f, "Expected 0xdeadb33f, got %lx\n", FUNC0());

    FUNC2(0xcacacaca);
    status = FUNC1(handle,  &IoStatusBlock, NULL, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    FUNC3(status == STATUS_ACCESS_VIOLATION, "Expected STATUS_ACCESS_VIOLATION, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xcacacaca, "Expected 0xcacacaca, got %lx\n", FUNC0());

    FUNC2(0xdadadada);
    status = FUNC1(handle,  &IoStatusBlock, &FileFsDevice, 0, FileFsDeviceInformation);
    FUNC3(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdadadada, "Expected 0xdadadada, got %lx\n", FUNC0());

    /*All valid, invalid FsInformationClass value.*/
    FUNC2(0xdeadbeef);
    status = FUNC1(handle, &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), 0);
    FUNC3(status == STATUS_INVALID_INFO_CLASS, "Expected STATUS_INVALID_INFO_CLASS, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", FUNC0());

    /*Testing NULL handle*/
    FUNC2(0xdeadbeef);
    status = FUNC1(NULL, &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    FUNC3(status == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", FUNC0());

    /*Testing INVALID_HANDLE_VALUE*/
    FUNC2(0xdeaddead);
    status = FUNC1((HANDLE)(-1), &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    FUNC3(status == STATUS_OBJECT_TYPE_MISMATCH, "Expected STATUS_OBJECT_TYPE_MISMATCH, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdeaddead, "Expected 0xdeaddead, got %lx\n", FUNC0());

    /*Almost all NULL. Then it checks against the Length!*/
    FUNC2(0xdeadbeef);
    status = FUNC1(NULL, NULL, NULL, 0, FileFsDeviceInformation);
    FUNC3(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got 0x%lx\n", status);
    FUNC3(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", FUNC0());
}