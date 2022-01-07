
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_4__ {int QuadPart; } ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef int * PUCHAR ;
typedef scalar_t__ PCHAR ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int FILE_SHARE_READ ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int NtAllocateVirtualMemory (int ,int **,int ,int*,int,int ) ;
 int NtCreateSection (int *,int ,int *,TYPE_1__*,int ,int ,int ) ;
 int NtCurrentProcess () ;
 int NtMapViewOfSection (int ,int ,int **,int ,int ,TYPE_1__*,int*,int ,int ,int ) ;
 int NtOpenFile (int *,int,int *,int *,int ,int ) ;
 int PAGE_READWRITE ;
 int RtlDosPathNameToNtPathName_U (char*,int *,int *,int *) ;
 int SECTION_ALL_ACCESS ;
 int SEC_IMAGE ;
 int STATUS_SUCCESS ;
 int SYNCHRONIZE ;
 int ViewShare ;
 int ok (int ,char*) ;
 int ok_ntstatus (int ,int ) ;
 int printf (char*,int ,...) ;
 int system (char*) ;

void
Test_ImageSection2(void)
{
    UNICODE_STRING FileName;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES FileObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    HANDLE FileHandle, ImageSectionHandle;
    PVOID ImageBase, BaseAddress;
    SIZE_T ViewSize;
    LARGE_INTEGER MaximumSize, SectionOffset;

    if (!RtlDosPathNameToNtPathName_U(L"testdata\\nvoglv32.dll",
                                      &FileName,
                                      ((void*)0),
                                      ((void*)0)))
    {
        ok(0, "RtlDosPathNameToNtPathName_U failed\n");
        return;
    }

    InitializeObjectAttributes(&FileObjectAttributes,
                               &FileName,
                               0,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenFile(&FileHandle,
                        GENERIC_READ|GENERIC_WRITE|SYNCHRONIZE,
                        &FileObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    ok_ntstatus(Status, STATUS_SUCCESS);
    printf("Opened file with handle %p\n", FileHandle);


    MaximumSize.QuadPart = 0x20000;
    Status = NtCreateSection(&ImageSectionHandle,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             &MaximumSize,
                             PAGE_READWRITE,
                             SEC_IMAGE,
                             FileHandle);
    ok_ntstatus(Status, STATUS_SUCCESS);

    printf("Created image section with handle %p\n", ImageSectionHandle);



    ImageBase = ((void*)0);
    ViewSize = 0x0000;
    SectionOffset.QuadPart = 0x00000;
    Status = NtMapViewOfSection(ImageSectionHandle,
                                NtCurrentProcess(),
                                &ImageBase,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
    ok_ntstatus(Status, STATUS_SUCCESS);

    printf("Mapped image section at %p, value in text section: %lx\n",
           ImageBase, *((ULONG*)((PCHAR)ImageBase + 0x1196)));
    system("PAUSE");


    BaseAddress = (PUCHAR)ImageBase + 0x10000;
    ViewSize = 0x1000;
    Status = NtAllocateVirtualMemory(NtCurrentProcess(),
                                     &BaseAddress,
                                     0,
                                     &ViewSize,
                                     MEM_RESERVE | MEM_COMMIT,
                                     PAGE_READWRITE);
    printf("allocation status: %lx\n", Status);
    system("PAUSE");

}
