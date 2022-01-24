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
typedef  int /*<<< orphan*/  PFILE_STANDARD_INFORMATION ;
typedef  int /*<<< orphan*/  PFILE_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE_STANDARD_INFORMATION ;
typedef  int /*<<< orphan*/  FILE_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 int /*<<< orphan*/  FileBasicInformation ; 
 int /*<<< orphan*/  FileStandardInformation ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int SYNCHRONIZE ; 

__attribute__((used)) static
BOOL
FUNC4(
    LPCWSTR File,
    PFILE_BASIC_INFORMATION FileBasicInfo,
    PFILE_STANDARD_INFORMATION FileStandardInfo)
{
    HANDLE hFile;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;

    hFile = FUNC1(File, FILE_READ_ATTRIBUTES | SYNCHRONIZE,
                        FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
                        OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL | FILE_SYNCHRONOUS_IO_NONALERT,
                        NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        return FALSE;
    }

    Status = FUNC3(hFile, &IoStatusBlock, FileBasicInfo,
                                    sizeof(FILE_BASIC_INFORMATION), FileBasicInformation);
    if (!FUNC2(Status))
    {
        FUNC0(hFile);
        return FALSE;
    }

    Status = FUNC3(hFile, &IoStatusBlock, FileStandardInfo,
                                    sizeof(FILE_STANDARD_INFORMATION), FileStandardInformation);

    FUNC0(hFile);
    return FUNC2(Status);
}