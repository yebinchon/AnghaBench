
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int * HANDLE ;
typedef int FILE_FS_DEVICE_INFORMATION ;


 int FileFsDeviceInformation ;
 int GetLastError () ;
 int NtQueryVolumeInformationFile (int *,int *,int *,int,int ) ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_HANDLE ;
 int STATUS_INVALID_INFO_CLASS ;
 int STATUS_OBJECT_TYPE_MISMATCH ;
 int SetLastError (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static
VOID
TestFileFsDeviceInformation(HANDLE handle)
{
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_FS_DEVICE_INFORMATION FileFsDevice;
    NTSTATUS status;


    SetLastError(0xdeadb33f);
    status = NtQueryVolumeInformationFile(handle, ((void*)0), &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    ok(status == STATUS_ACCESS_VIOLATION, "Expected STATUS_ACCESS_VIOLATION, got 0x%lx\n", status);
    ok(GetLastError() == 0xdeadb33f, "Expected 0xdeadb33f, got %lx\n", GetLastError());

    SetLastError(0xcacacaca);
    status = NtQueryVolumeInformationFile(handle, &IoStatusBlock, ((void*)0), sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    ok(status == STATUS_ACCESS_VIOLATION, "Expected STATUS_ACCESS_VIOLATION, got 0x%lx\n", status);
    ok(GetLastError() == 0xcacacaca, "Expected 0xcacacaca, got %lx\n", GetLastError());

    SetLastError(0xdadadada);
    status = NtQueryVolumeInformationFile(handle, &IoStatusBlock, &FileFsDevice, 0, FileFsDeviceInformation);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got 0x%lx\n", status);
    ok(GetLastError() == 0xdadadada, "Expected 0xdadadada, got %lx\n", GetLastError());


    SetLastError(0xdeadbeef);
    status = NtQueryVolumeInformationFile(handle, &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), 0);
    ok(status == STATUS_INVALID_INFO_CLASS, "Expected STATUS_INVALID_INFO_CLASS, got 0x%lx\n", status);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", GetLastError());


    SetLastError(0xdeadbeef);
    status = NtQueryVolumeInformationFile(((void*)0), &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    ok(status == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got 0x%lx\n", status);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", GetLastError());


    SetLastError(0xdeaddead);
    status = NtQueryVolumeInformationFile((HANDLE)(-1), &IoStatusBlock, &FileFsDevice, sizeof(FILE_FS_DEVICE_INFORMATION), FileFsDeviceInformation);
    ok(status == STATUS_OBJECT_TYPE_MISMATCH, "Expected STATUS_OBJECT_TYPE_MISMATCH, got 0x%lx\n", status);
    ok(GetLastError() == 0xdeaddead, "Expected 0xdeaddead, got %lx\n", GetLastError());


    SetLastError(0xdeadbeef);
    status = NtQueryVolumeInformationFile(((void*)0), ((void*)0), ((void*)0), 0, FileFsDeviceInformation);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got 0x%lx\n", status);
    ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %lx\n", GetLastError());
}
