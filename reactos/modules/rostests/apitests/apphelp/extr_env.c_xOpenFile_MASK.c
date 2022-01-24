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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int FILE_EXECUTE ; 
 int FILE_NON_DIRECTORY_FILE ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_READ_DATA ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

HANDLE FUNC7(WCHAR* ApplicationName)
{
    UNICODE_STRING FileName;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;
    HANDLE FileHandle;

    if (!FUNC3(ApplicationName, &FileName, NULL, NULL))
    {
        FUNC5("Unable to translate %s to Nt path\n", FUNC6(ApplicationName));
        return NULL;
    }


    FUNC0(&ObjectAttributes, &FileName, OBJ_CASE_INSENSITIVE, NULL, NULL);
    Status = FUNC2(&FileHandle,
                        SYNCHRONIZE |
                        FILE_READ_ATTRIBUTES |
                        FILE_READ_DATA |
                        FILE_EXECUTE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ | FILE_SHARE_DELETE,
                        FILE_SYNCHRONOUS_IO_NONALERT |
                        FILE_NON_DIRECTORY_FILE);

    FUNC4(&FileName);

    if (!FUNC1(Status))
        return NULL;

    return FileHandle;
}