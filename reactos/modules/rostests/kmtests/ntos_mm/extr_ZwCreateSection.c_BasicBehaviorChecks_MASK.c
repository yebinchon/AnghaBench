#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {void* QuadPart; } ;
struct TYPE_5__ {int /*<<< orphan*/ * SectionObjectPointer; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PSECTION_OBJECT_POINTERS ;
typedef  TYPE_1__* PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGNORE ; 
 int /*<<< orphan*/ * IoFileObjectType ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  NO_HANDLE_CLOSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  SECTION_ALL_ACCESS ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int /*<<< orphan*/  SEC_FILE ; 
 int /*<<< orphan*/  STANDARD_RIGHTS_ALL ; 
 int /*<<< orphan*/  STATUS_INVALID_FILE_FOR_SECTION ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 void* TestStringSize ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
VOID
FUNC8(HANDLE FileHandle)
{
    NTSTATUS Status;
    HANDLE Section = NULL;
    PFILE_OBJECT FileObject;
    LARGE_INTEGER Length;
    Length.QuadPart = TestStringSize;

    //mimic lack of section support for a particular file as well.
    Status = FUNC5(FileHandle, STANDARD_RIGHTS_ALL, *IoFileObjectType, KernelMode, (PVOID *)&FileObject, NULL);
    if (!FUNC7(FUNC3(Status), "Cannot reference object by handle\n"))
    {
        PSECTION_OBJECT_POINTERS Pointers = FileObject->SectionObjectPointer;

        FileObject->SectionObjectPointer = NULL;
        FUNC0(Section, SECTION_ALL_ACCESS, NULL, Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_INVALID_FILE_FOR_SECTION, IGNORE);
        FileObject->SectionObjectPointer = Pointers;
        FUNC4(FileObject);
    }

    Length.QuadPart = TestStringSize;
    FUNC0(Section, (SECTION_ALL_ACCESS), NULL, Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    FUNC1(Section, 2, 1);
    FUNC2(Section, SEC_FILE, Length.QuadPart, STATUS_SUCCESS);
    FUNC6(Section); //manually close it due to NO_HANDLE_CLOSE in CREATE_SECTION

    //section length should be set to that of file
    Length.QuadPart = 0;
    FUNC0(Section, SECTION_ALL_ACCESS, NULL, Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    FUNC2(Section, SEC_FILE, TestStringSize, STATUS_SUCCESS);
    FUNC6(Section);

    //create a smaller section than file
    Length.QuadPart = TestStringSize - 100;
    FUNC0(Section, SECTION_ALL_ACCESS, NULL, Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    FUNC2(Section, SEC_FILE, TestStringSize - 100, STATUS_SUCCESS);
    FUNC6(Section);
}