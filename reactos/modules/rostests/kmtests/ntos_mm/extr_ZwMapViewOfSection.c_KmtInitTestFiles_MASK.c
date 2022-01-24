#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int /*<<< orphan*/  Information; } ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ ** PHANDLE ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_CREATED ; 
 int FILE_DELETE_ON_CLOSE ; 
 int FILE_NON_DIRECTORY_FILE ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FILE_SUPERSEDE ; 
 int GENERIC_EXECUTE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  KmtestFileObject ; 
 int /*<<< orphan*/  NtdllObject ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 int SYNCHRONIZE ; 
 scalar_t__ TestString ; 
 int /*<<< orphan*/  TestStringSize ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
VOID
FUNC7(PHANDLE ReadOnlyFile, PHANDLE WriteOnlyFile, PHANDLE ExecutableFile)
{
    NTSTATUS Status;
    LARGE_INTEGER FileOffset;
    IO_STATUS_BLOCK IoStatusBlock;

    //INIT THE READ-ONLY FILE
    Status = FUNC0(ReadOnlyFile, GENERIC_READ, &NtdllObject, &IoStatusBlock, NULL, FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ, FILE_OPEN, FILE_NON_DIRECTORY_FILE, NULL, 0);
    FUNC4(Status, STATUS_SUCCESS);
    FUNC3(*ReadOnlyFile != NULL, "Couldn't acquire READONLY handle\n");

    //INIT THE EXECUTABLE FILE
    Status = FUNC0(ExecutableFile, GENERIC_EXECUTE, &NtdllObject, &IoStatusBlock, NULL, FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ, FILE_OPEN, FILE_NON_DIRECTORY_FILE, NULL, 0);
    FUNC4(Status, STATUS_SUCCESS);
    FUNC3(*ExecutableFile != NULL, "Couldn't acquire EXECUTE handle\n");

    //INIT THE WRITE-ONLY FILE
    //TODO: Delete the file when the tests are all executed
    Status = FUNC0(WriteOnlyFile, (GENERIC_WRITE | SYNCHRONIZE), &KmtestFileObject, &IoStatusBlock, NULL, FILE_ATTRIBUTE_NORMAL, FILE_SHARE_WRITE, FILE_SUPERSEDE, (FILE_NON_DIRECTORY_FILE | FILE_DELETE_ON_CLOSE), NULL, 0);
    FUNC4(Status, STATUS_SUCCESS);
    FUNC5(IoStatusBlock.Information, FILE_CREATED);
    FUNC3(*WriteOnlyFile != NULL, "WriteOnlyFile is NULL\n");
    if (!FUNC6(*WriteOnlyFile != NULL, "No WriteOnlyFile\n"))
    {
        FileOffset.QuadPart = 0;
        Status = FUNC2(*WriteOnlyFile, NULL, NULL, NULL, &IoStatusBlock, (PVOID)TestString, TestStringSize, &FileOffset, NULL);
        FUNC3(Status == STATUS_SUCCESS || Status == STATUS_PENDING, "Status = 0x%08lx\n", Status);
        Status = FUNC1(*WriteOnlyFile, FALSE, NULL);
        FUNC4(Status, STATUS_SUCCESS);
        FUNC5(IoStatusBlock.Information, TestStringSize);
    }
}