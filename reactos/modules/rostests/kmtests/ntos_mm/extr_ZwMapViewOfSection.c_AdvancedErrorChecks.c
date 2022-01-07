
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {void* QuadPart; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;


 int IGNORE ;
 int KernelMode ;
 int MEM_RESERVE ;
 int MmTestMapView (int ,int ,int *,int ,void*,TYPE_1__*,int*,int ,int ,int ,int ,int ) ;
 int ObDereferenceObject (int ) ;
 int ObReferenceObjectByHandle (int ,int ,int *,int ,int *,int *) ;
 int PAGE_READWRITE ;
 int PsGetCurrentProcess () ;
 int SECTION_ALL_ACCESS ;
 int SEC_COMMIT ;
 int STANDARD_RIGHTS_ALL ;
 int STATUS_INVALID_VIEW_SIZE ;
 int STATUS_SUCCESS ;
 void* TestStringSize ;
 int ViewUnmap ;
 int ZwClose (int ) ;
 int ZwCreateSection (int *,int ,int *,TYPE_1__*,int ,int ,int ) ;
 int ok_eq_hex (int ,int ) ;

__attribute__((used)) static
VOID
AdvancedErrorChecks(HANDLE FileHandleReadOnly, HANDLE FileHandleWriteOnly)
{
    NTSTATUS Status;
    PVOID BaseAddress;
    HANDLE FileSectionHandle;
    LARGE_INTEGER SectionOffset;
    LARGE_INTEGER MaximumSize;
    SIZE_T ViewSize = 0;
    PVOID SectionObject;

    MaximumSize.QuadPart = TestStringSize;

    Status = ZwCreateSection(&FileSectionHandle, SECTION_ALL_ACCESS, ((void*)0), &MaximumSize, PAGE_READWRITE, SEC_COMMIT, FileHandleWriteOnly);
    ok_eq_hex(Status, STATUS_SUCCESS);

    Status = ObReferenceObjectByHandle(FileSectionHandle,
        STANDARD_RIGHTS_ALL,
        ((void*)0),
        KernelMode,
        &SectionObject,
        ((void*)0));

    ok_eq_hex(Status, STATUS_SUCCESS);




    ViewSize = -1;
    MmTestMapView(SectionObject, PsGetCurrentProcess(), &BaseAddress, 0, TestStringSize, &SectionOffset, &ViewSize, ViewUnmap, MEM_RESERVE, PAGE_READWRITE, STATUS_INVALID_VIEW_SIZE, IGNORE);


    ViewSize = 1;
    SectionOffset.QuadPart = TestStringSize;
    MmTestMapView(SectionObject, PsGetCurrentProcess(), &BaseAddress, 0, TestStringSize, &SectionOffset, &ViewSize, ViewUnmap, 0, PAGE_READWRITE, STATUS_INVALID_VIEW_SIZE, IGNORE);

    ObDereferenceObject(SectionObject);
    ZwClose(FileSectionHandle);
}
