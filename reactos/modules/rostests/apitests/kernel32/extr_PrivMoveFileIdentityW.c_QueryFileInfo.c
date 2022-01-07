
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PFILE_STANDARD_INFORMATION ;
typedef int PFILE_BASIC_INFORMATION ;
typedef int NTSTATUS ;
typedef int LPCWSTR ;
typedef int IO_STATUS_BLOCK ;
typedef scalar_t__ HANDLE ;
typedef int FILE_STANDARD_INFORMATION ;
typedef int FILE_BASIC_INFORMATION ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int,int,int *,int ,int,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int FileBasicInformation ;
 int FileStandardInformation ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NT_SUCCESS (int ) ;
 int NtQueryInformationFile (scalar_t__,int *,int ,int,int ) ;
 int OPEN_EXISTING ;
 int SYNCHRONIZE ;

__attribute__((used)) static
BOOL
QueryFileInfo(
    LPCWSTR File,
    PFILE_BASIC_INFORMATION FileBasicInfo,
    PFILE_STANDARD_INFORMATION FileStandardInfo)
{
    HANDLE hFile;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;

    hFile = CreateFileW(File, FILE_READ_ATTRIBUTES | SYNCHRONIZE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE, ((void*)0),
                        OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL | FILE_SYNCHRONOUS_IO_NONALERT,
                        ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return FALSE;
    }

    Status = NtQueryInformationFile(hFile, &IoStatusBlock, FileBasicInfo,
                                    sizeof(FILE_BASIC_INFORMATION), FileBasicInformation);
    if (!NT_SUCCESS(Status))
    {
        CloseHandle(hFile);
        return FALSE;
    }

    Status = NtQueryInformationFile(hFile, &IoStatusBlock, FileStandardInfo,
                                    sizeof(FILE_STANDARD_INFORMATION), FileStandardInformation);

    CloseHandle(hFile);
    return NT_SUCCESS(Status);
}
