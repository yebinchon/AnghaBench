#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int QuadPart; } ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FILE_SYNCHRONOUS_IO_NONALERT ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MEM_COMMIT ; 
 int MEM_RESERVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECTION_ALL_ACCESS ; 
 int /*<<< orphan*/  SEC_IMAGE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  ViewShare ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(void)
{
    UNICODE_STRING FileName;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES FileObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    HANDLE FileHandle, ImageSectionHandle;
    PVOID ImageBase, BaseAddress;
    SIZE_T ViewSize;
    LARGE_INTEGER MaximumSize, SectionOffset;

    if (!FUNC6(L"testdata\\nvoglv32.dll",
                                      &FileName,
                                      NULL,
                                      NULL))
    {
        FUNC7(0, "RtlDosPathNameToNtPathName_U failed\n");
        return;
    }

    FUNC0(&FileObjectAttributes,
                               &FileName,
                               0,
                               NULL,
                               NULL);

    Status = FUNC5(&FileHandle,
                        GENERIC_READ|GENERIC_WRITE|SYNCHRONIZE,
                        &FileObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    FUNC8(Status, STATUS_SUCCESS);
    FUNC9("Opened file with handle %p\n", FileHandle);

    /* Create a data section with write access */
    MaximumSize.QuadPart = 0x20000;
    Status = FUNC2(&ImageSectionHandle,
                             SECTION_ALL_ACCESS, // DesiredAccess
                             NULL, // ObjectAttributes
                             &MaximumSize, // MaximumSize
                             PAGE_READWRITE, // SectionPageProtection
                             SEC_IMAGE, // AllocationAttributes
                             FileHandle);
    FUNC8(Status, STATUS_SUCCESS);

    FUNC9("Created image section with handle %p\n", ImageSectionHandle);
    //system("PAUSE");

    /* Map the image section */
    ImageBase = NULL;
    ViewSize = 0x0000;
    SectionOffset.QuadPart = 0x00000;
    Status = FUNC4(ImageSectionHandle,
                                FUNC3(),
                                &ImageBase,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
    FUNC8(Status, STATUS_SUCCESS);

    FUNC9("Mapped image section at %p, value in text section: %lx\n",
           *ImageBase, *((ULONG*)((PCHAR)ImageBase + 0x1196)));
    FUNC10("PAUSE");

    /* Try to allocate a page after the section */
    BaseAddress = (PUCHAR)ImageBase + 0x10000;
    ViewSize = 0x1000;
    Status = FUNC1(FUNC3(),
                                     &BaseAddress,
                                     0,
                                     &ViewSize,
                                     MEM_RESERVE | MEM_COMMIT,
                                     PAGE_READWRITE);
    FUNC9("allocation status: %lx\n", Status);
    FUNC10("PAUSE");

}