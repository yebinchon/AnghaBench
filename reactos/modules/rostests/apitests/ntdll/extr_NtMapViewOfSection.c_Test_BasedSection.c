
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int QuadPart; } ;
typedef scalar_t__ SIZE_T ;
typedef int * PVOID ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;


 int NtCreateSection (int *,int ,int *,TYPE_1__*,int ,int,int *) ;
 int NtCurrentProcess () ;
 int NtMapViewOfSection (int ,int ,int **,int ,int ,TYPE_1__*,scalar_t__*,int ,int ,int ) ;
 int PAGE_READWRITE ;
 int SECTION_ALL_ACCESS ;
 int SEC_BASED ;
 int SEC_COMMIT ;
 int STATUS_CONFLICTING_ADDRESSES ;
 int STATUS_SUCCESS ;
 int ViewShare ;
 int ok (int,char*,int *,int *) ;
 int ok_ntstatus (int ,int ) ;

void
Test_BasedSection(void)
{
    NTSTATUS Status;
    HANDLE SectionHandle1, SectionHandle2;
    LARGE_INTEGER MaximumSize, SectionOffset;
    PVOID BaseAddress1, BaseAddress2;
    SIZE_T ViewSize;


    MaximumSize.QuadPart = 0x1000;
    Status = NtCreateSection(&SectionHandle1,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             &MaximumSize,
                             PAGE_READWRITE,
                             SEC_COMMIT | SEC_BASED,
                             ((void*)0));
    ok_ntstatus(Status, STATUS_SUCCESS);


    BaseAddress1 = ((void*)0);
    SectionOffset.QuadPart = 0;
    ViewSize = 0;
    Status = NtMapViewOfSection(SectionHandle1,
                                NtCurrentProcess(),
                                &BaseAddress1,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);



    ok_ntstatus(Status, STATUS_SUCCESS);



    MaximumSize.QuadPart = 0x1000;
    Status = NtCreateSection(&SectionHandle2,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             &MaximumSize,
                             PAGE_READWRITE,
                             SEC_COMMIT | SEC_BASED,
                             ((void*)0));
    ok_ntstatus(Status, STATUS_SUCCESS);


    BaseAddress2 = ((void*)0);
    SectionOffset.QuadPart = 0;
    ViewSize = 0;
    Status = NtMapViewOfSection(SectionHandle2,
                                NtCurrentProcess(),
                                &BaseAddress2,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);



    ok_ntstatus(Status, STATUS_SUCCESS);
    ok((ULONG_PTR)BaseAddress2 < (ULONG_PTR)BaseAddress1,
       "Invalid addresses: BaseAddress1=%p, BaseAddress2=%p\n", BaseAddress1, BaseAddress2);
    ok(((ULONG_PTR)BaseAddress1 - (ULONG_PTR)BaseAddress2) == 0x10000,
       "Invalid addresses: BaseAddress1=%p, BaseAddress2=%p\n", BaseAddress1, BaseAddress2);

}
