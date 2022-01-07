
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {void* QuadPart; } ;
struct TYPE_5__ {int * SectionObjectPointer; } ;
typedef int PVOID ;
typedef int * PSECTION_OBJECT_POINTERS ;
typedef TYPE_1__* PFILE_OBJECT ;
typedef int NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int * HANDLE ;


 int CREATE_SECTION (int *,int ,int *,TYPE_2__,int ,int ,int *,int ,int ) ;
 int CheckObject (int *,int,int) ;
 int CheckSection (int *,int ,void*,int ) ;
 int IGNORE ;
 int * IoFileObjectType ;
 int KernelMode ;
 int NO_HANDLE_CLOSE ;
 int NT_SUCCESS (int ) ;
 int ObDereferenceObject (TYPE_1__*) ;
 int ObReferenceObjectByHandle (int *,int ,int ,int ,int *,int *) ;
 int PAGE_READONLY ;
 int SECTION_ALL_ACCESS ;
 int SEC_COMMIT ;
 int SEC_FILE ;
 int STANDARD_RIGHTS_ALL ;
 int STATUS_INVALID_FILE_FOR_SECTION ;
 int STATUS_SUCCESS ;
 void* TestStringSize ;
 int ZwClose (int *) ;
 int skip (int ,char*) ;

__attribute__((used)) static
VOID
BasicBehaviorChecks(HANDLE FileHandle)
{
    NTSTATUS Status;
    HANDLE Section = ((void*)0);
    PFILE_OBJECT FileObject;
    LARGE_INTEGER Length;
    Length.QuadPart = TestStringSize;


    Status = ObReferenceObjectByHandle(FileHandle, STANDARD_RIGHTS_ALL, *IoFileObjectType, KernelMode, (PVOID *)&FileObject, ((void*)0));
    if (!skip(NT_SUCCESS(Status), "Cannot reference object by handle\n"))
    {
        PSECTION_OBJECT_POINTERS Pointers = FileObject->SectionObjectPointer;

        FileObject->SectionObjectPointer = ((void*)0);
        CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_INVALID_FILE_FOR_SECTION, IGNORE);
        FileObject->SectionObjectPointer = Pointers;
        ObDereferenceObject(FileObject);
    }

    Length.QuadPart = TestStringSize;
    CREATE_SECTION(Section, (SECTION_ALL_ACCESS), ((void*)0), Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    CheckObject(Section, 2, 1);
    CheckSection(Section, SEC_FILE, Length.QuadPart, STATUS_SUCCESS);
    ZwClose(Section);


    Length.QuadPart = 0;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    CheckSection(Section, SEC_FILE, TestStringSize, STATUS_SUCCESS);
    ZwClose(Section);


    Length.QuadPart = TestStringSize - 100;
    CREATE_SECTION(Section, SECTION_ALL_ACCESS, ((void*)0), Length, PAGE_READONLY, SEC_COMMIT, FileHandle, STATUS_SUCCESS, NO_HANDLE_CLOSE);
    CheckSection(Section, SEC_FILE, TestStringSize - 100, STATUS_SUCCESS);
    ZwClose(Section);
}
