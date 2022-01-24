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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TestDllPath ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FILE_SYNCHRONOUS_IO_NONALERT ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_NOACCESS ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECTION_ALL_ACCESS ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int /*<<< orphan*/  SEC_IMAGE ; 
 int /*<<< orphan*/  STATUS_CONFLICTING_ADDRESSES ; 
 int /*<<< orphan*/  STATUS_IMAGE_MACHINE_TYPE_MISMATCH ; 
 int /*<<< orphan*/  STATUS_INVALID_IMAGE_NOT_MZ ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/  ViewShare ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int) ; 

void
FUNC19(void)
{
    UNICODE_STRING FileName;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES FileObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    WCHAR TestDllPath[MAX_PATH];
    HANDLE FileHandle, DataSectionHandle, ImageSectionHandle;
    PVOID DataBase, ImageBase;
    SIZE_T ViewSize;

    FUNC0(NULL, TestDllPath, FUNC11(TestDllPath));
    FUNC18(TestDllPath, L'\\')[1] = UNICODE_NULL;
    FUNC13(TestDllPath, sizeof(TestDllPath), L"testdata\\test.dll");
    if (!FUNC12(TestDllPath,
                                      &FileName,
                                      NULL,
                                      NULL))
    {
        FUNC14(0, "RtlDosPathNameToNtPathName_U failed\n");
        return;
    }

    FUNC1(&FileObjectAttributes,
                               &FileName,
                               0,
                               NULL,
                               NULL);

    Status = FUNC9(&FileHandle,
                        GENERIC_READ|GENERIC_WRITE|SYNCHRONIZE,
                        &FileObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    FUNC16(Status, STATUS_SUCCESS);
    if (!FUNC2(Status))
    {
        FUNC17("Failed to open file\n");
        return;
    }

    /* Create a data section with write access */
    Status = FUNC5(&DataSectionHandle,
                             SECTION_ALL_ACCESS, // DesiredAccess
                             NULL, // ObjectAttributes
                             NULL, // MaximumSize
                             PAGE_READWRITE, // SectionPageProtection
                             SEC_COMMIT, // AllocationAttributes
                             FileHandle);
    FUNC16(Status, STATUS_SUCCESS);
    if (!FUNC2(Status))
    {
        FUNC17("Failed to create data section\n");
        FUNC4(FileHandle);
        return;
    }

    /* Map the data section as flat mapping */
    DataBase = NULL;
    ViewSize = 0;
    Status = FUNC8(DataSectionHandle,
                                FUNC6(),
                                &DataBase,
                                0,
                                0,
                                NULL,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
    FUNC16(Status, STATUS_SUCCESS);
    //ok(ViewSize == 0x3f95cc48, "ViewSize wrong: 0x%lx\n");
    if (!FUNC2(Status))
    {
        FUNC17("Failed to map view of data section\n");
        FUNC4(DataSectionHandle);
        FUNC4(FileHandle);
        return;
    }

    /* Check the original data */
    FUNC14(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");

    /* Modify the PE header (but do not flush!) */
    *(ULONG*)DataBase = 0xdeadbabe;
    FUNC14(*(ULONG*)DataBase == 0xdeadbabe, "Header not ok\n");

    /* Modify data in the .data section (but do not flush!) */
    FUNC14(*(ULONG*)((PUCHAR)DataBase + 0x800) == 0x12345678,
       "Data in .data section invalid: 0x%lx!\n", *(ULONG*)((PUCHAR)DataBase + 0x800));
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0x87654321;

    /* Now try to create an image section (should fail) */
    Status = FUNC5(&ImageSectionHandle,
                             SECTION_ALL_ACCESS, // DesiredAccess
                             NULL, // ObjectAttributes
                             NULL, // MaximumSize
                             PAGE_READWRITE, // SectionPageProtection
                             SEC_IMAGE, // AllocationAttributes
                             FileHandle);
    FUNC16(Status, STATUS_INVALID_IMAGE_NOT_MZ);
    if (FUNC2(Status)) FUNC4(ImageSectionHandle);

    /* Restore the original header */
    *(ULONG*)DataBase = 0x00905a4d;

    /* Modify data in the .data section (but do not flush!) */
    FUNC15(*(ULONG*)((PUCHAR)DataBase + 0x800), 0x87654321);
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0xdeadbabe;

    /* Try to create an image section again */
    Status = FUNC5(&ImageSectionHandle,
                             SECTION_ALL_ACCESS, // DesiredAccess
                             NULL, // ObjectAttributes
                             NULL, // MaximumSize
                             PAGE_READWRITE, // SectionPageProtection
                             SEC_IMAGE, // AllocationAttributes
                             FileHandle);
    FUNC16(Status, STATUS_SUCCESS);
    if (!FUNC2(Status))
    {
        FUNC17("Failed to create image section\n");
        FUNC4(DataSectionHandle);
        FUNC4(FileHandle);
        return;
    }

    /* Map the image section */
    ImageBase = NULL;
    ViewSize = 0;
    Status = FUNC8(ImageSectionHandle,
                                FUNC6(),
                                &ImageBase,
                                0, // ZeroBits
                                0, // CommitSize
                                NULL, // SectionOffset
                                &ViewSize,
                                ViewShare,
                                0, // AllocationType
                                PAGE_READONLY);
#ifdef _M_IX86
    ok_ntstatus(Status, STATUS_SUCCESS);
#else
    FUNC16(Status, STATUS_IMAGE_MACHINE_TYPE_MISMATCH);
#endif
    if (!FUNC2(Status))
    {
        FUNC17("Failed to map view of image section\n");
        FUNC4(ImageSectionHandle);
        FUNC4(DataSectionHandle);
        FUNC4(FileHandle);
        return;
    }

    /* Check the header */
    FUNC14(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");
    FUNC14(*(ULONG*)ImageBase == 0x00905a4d, "Header not ok\n");

    /* Check the data section. Either of these can be present! */
    FUNC14((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));

    /* Now modify the data again */
    *(ULONG*)DataBase = 0xdeadbabe;
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0xf00dada;

    /* Check the data */
    FUNC14(*(ULONG*)DataBase == 0xdeadbabe, "Header not ok\n");
    FUNC14(*(ULONG*)ImageBase == 0x00905a4d, "Data should not be synced!\n");
    FUNC14((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));

    /* Flush the view */
    ViewSize = 0x1000;
    Status = FUNC7(FUNC6(),
                                  &DataBase,
                                  &ViewSize,
                                  &IoStatusBlock);
    FUNC16(Status, STATUS_SUCCESS);

    /* Check the data again */
    FUNC14(*(ULONG*)ImageBase == 0x00905a4d, "Data should not be synced!\n");
    FUNC14((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));

    /* Restore the original header */
    *(ULONG*)DataBase = 0x00905a4d;
    FUNC14(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");

    /* Close the image mapping */
    FUNC10(FUNC6(), ImageBase);
    FUNC4(ImageSectionHandle);

    /* Create an image section again */
    Status = FUNC5(&ImageSectionHandle,
                             SECTION_ALL_ACCESS, // DesiredAccess
                             NULL, // ObjectAttributes
                             NULL, // MaximumSize
                             PAGE_READWRITE, // SectionPageProtection
                             SEC_IMAGE, // AllocationAttributes
                             FileHandle);
    FUNC16(Status, STATUS_SUCCESS);
    if (!FUNC2(Status))
    {
        FUNC17("Failed to create image section\n");
        FUNC4(DataSectionHandle);
        FUNC4(FileHandle);
        return;
    }

    /* Map the image section again */
    ImageBase = NULL;
    ViewSize = 0;
    Status = FUNC8(ImageSectionHandle,
                                FUNC6(),
                                &ImageBase,
                                0,
                                0,
                                NULL,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READONLY);
#ifdef _M_IX86
    ok_ntstatus(Status, STATUS_SUCCESS);
#else
    FUNC16(Status, STATUS_IMAGE_MACHINE_TYPE_MISMATCH);
#endif
    if (!FUNC2(Status))
    {
        FUNC17("Failed to map view of image section\n");
        FUNC4(ImageSectionHandle);
        FUNC4(DataSectionHandle);
        FUNC4(FileHandle);
        return;
    }

    // This one doesn't always work, needs investigation
    /* Check the .data section again */
    //ok(*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0xf00dada,
    //   "Data should be synced: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));

    /* Restore the original data */
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0x12345678;

    /* Close the data mapping */
    FUNC10(FUNC6(), DataBase);

    FUNC4(DataSectionHandle);

    /* Try to allocate memory inside the image mapping */
    DataBase = (PUCHAR)ImageBase + 0x20000;
    ViewSize = 0x1000;
    Status = FUNC3(FUNC6(), &DataBase, 0, &ViewSize, MEM_RESERVE, PAGE_NOACCESS);
    FUNC16(Status, STATUS_CONFLICTING_ADDRESSES);

    /* Cleanup */
    FUNC4(FileHandle);
    FUNC4(ImageSectionHandle);
    FUNC10(FUNC6(), ImageBase);
}