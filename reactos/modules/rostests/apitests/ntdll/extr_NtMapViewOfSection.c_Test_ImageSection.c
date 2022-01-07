
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int TestDllPath ;
typedef int SIZE_T ;
typedef int * PVOID ;
typedef int * PUCHAR ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int FILE_SHARE_READ ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetModuleFileNameW (int *,int *,int ) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAX_PATH ;
 int MEM_RESERVE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtAllocateVirtualMemory (int ,int **,int ,int*,int ,int ) ;
 int NtClose (int ) ;
 int NtCreateSection (int *,int ,int *,int *,int ,int ,int ) ;
 int NtCurrentProcess () ;
 int NtFlushVirtualMemory (int ,int **,int*,int *) ;
 int NtMapViewOfSection (int ,int ,int **,int ,int ,int *,int*,int ,int ,int ) ;
 int NtOpenFile (int *,int,int *,int *,int ,int ) ;
 int NtUnmapViewOfSection (int ,int *) ;
 int PAGE_NOACCESS ;
 int PAGE_READONLY ;
 int PAGE_READWRITE ;
 int RTL_NUMBER_OF (int *) ;
 int RtlDosPathNameToNtPathName_U (int *,int *,int *,int *) ;
 int SECTION_ALL_ACCESS ;
 int SEC_COMMIT ;
 int SEC_IMAGE ;
 int STATUS_CONFLICTING_ADDRESSES ;
 int STATUS_IMAGE_MACHINE_TYPE_MISMATCH ;
 int STATUS_INVALID_IMAGE_NOT_MZ ;
 int STATUS_SUCCESS ;
 int SYNCHRONIZE ;
 int StringCbCatW (int *,int,char*) ;
 int UNICODE_NULL ;
 int ViewShare ;
 int ok (int,char*,...) ;
 int ok_hex (int,int) ;
 int ok_ntstatus (int ,int ) ;
 int skip (char*) ;
 int * wcsrchr (int *,int) ;

void
Test_ImageSection(void)
{
    UNICODE_STRING FileName;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES FileObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    WCHAR TestDllPath[MAX_PATH];
    HANDLE FileHandle, DataSectionHandle, ImageSectionHandle;
    PVOID DataBase, ImageBase;
    SIZE_T ViewSize;

    GetModuleFileNameW(((void*)0), TestDllPath, RTL_NUMBER_OF(TestDllPath));
    wcsrchr(TestDllPath, L'\\')[1] = UNICODE_NULL;
    StringCbCatW(TestDllPath, sizeof(TestDllPath), L"testdata\\test.dll");
    if (!RtlDosPathNameToNtPathName_U(TestDllPath,
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
    if (!NT_SUCCESS(Status))
    {
        skip("Failed to open file\n");
        return;
    }


    Status = NtCreateSection(&DataSectionHandle,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             ((void*)0),
                             PAGE_READWRITE,
                             SEC_COMMIT,
                             FileHandle);
    ok_ntstatus(Status, STATUS_SUCCESS);
    if (!NT_SUCCESS(Status))
    {
        skip("Failed to create data section\n");
        NtClose(FileHandle);
        return;
    }


    DataBase = ((void*)0);
    ViewSize = 0;
    Status = NtMapViewOfSection(DataSectionHandle,
                                NtCurrentProcess(),
                                &DataBase,
                                0,
                                0,
                                ((void*)0),
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
    ok_ntstatus(Status, STATUS_SUCCESS);

    if (!NT_SUCCESS(Status))
    {
        skip("Failed to map view of data section\n");
        NtClose(DataSectionHandle);
        NtClose(FileHandle);
        return;
    }


    ok(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");


    *(ULONG*)DataBase = 0xdeadbabe;
    ok(*(ULONG*)DataBase == 0xdeadbabe, "Header not ok\n");


    ok(*(ULONG*)((PUCHAR)DataBase + 0x800) == 0x12345678,
       "Data in .data section invalid: 0x%lx!\n", *(ULONG*)((PUCHAR)DataBase + 0x800));
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0x87654321;


    Status = NtCreateSection(&ImageSectionHandle,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             ((void*)0),
                             PAGE_READWRITE,
                             SEC_IMAGE,
                             FileHandle);
    ok_ntstatus(Status, STATUS_INVALID_IMAGE_NOT_MZ);
    if (NT_SUCCESS(Status)) NtClose(ImageSectionHandle);


    *(ULONG*)DataBase = 0x00905a4d;


    ok_hex(*(ULONG*)((PUCHAR)DataBase + 0x800), 0x87654321);
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0xdeadbabe;


    Status = NtCreateSection(&ImageSectionHandle,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             ((void*)0),
                             PAGE_READWRITE,
                             SEC_IMAGE,
                             FileHandle);
    ok_ntstatus(Status, STATUS_SUCCESS);
    if (!NT_SUCCESS(Status))
    {
        skip("Failed to create image section\n");
        NtClose(DataSectionHandle);
        NtClose(FileHandle);
        return;
    }


    ImageBase = ((void*)0);
    ViewSize = 0;
    Status = NtMapViewOfSection(ImageSectionHandle,
                                NtCurrentProcess(),
                                &ImageBase,
                                0,
                                0,
                                ((void*)0),
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READONLY);



    ok_ntstatus(Status, STATUS_IMAGE_MACHINE_TYPE_MISMATCH);

    if (!NT_SUCCESS(Status))
    {
        skip("Failed to map view of image section\n");
        NtClose(ImageSectionHandle);
        NtClose(DataSectionHandle);
        NtClose(FileHandle);
        return;
    }


    ok(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");
    ok(*(ULONG*)ImageBase == 0x00905a4d, "Header not ok\n");


    ok((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));


    *(ULONG*)DataBase = 0xdeadbabe;
    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0xf00dada;


    ok(*(ULONG*)DataBase == 0xdeadbabe, "Header not ok\n");
    ok(*(ULONG*)ImageBase == 0x00905a4d, "Data should not be synced!\n");
    ok((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));


    ViewSize = 0x1000;
    Status = NtFlushVirtualMemory(NtCurrentProcess(),
                                  &DataBase,
                                  &ViewSize,
                                  &IoStatusBlock);
    ok_ntstatus(Status, STATUS_SUCCESS);


    ok(*(ULONG*)ImageBase == 0x00905a4d, "Data should not be synced!\n");
    ok((*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x87654321) ||
       (*(ULONG*)((PUCHAR)ImageBase + 0x80000) == 0x12345678),
       "Wrong value in data section: 0x%lx!\n", *(ULONG*)((PUCHAR)ImageBase + 0x80000));


    *(ULONG*)DataBase = 0x00905a4d;
    ok(*(ULONG*)DataBase == 0x00905a4d, "Header not ok\n");


    NtUnmapViewOfSection(NtCurrentProcess(), ImageBase);
    NtClose(ImageSectionHandle);


    Status = NtCreateSection(&ImageSectionHandle,
                             SECTION_ALL_ACCESS,
                             ((void*)0),
                             ((void*)0),
                             PAGE_READWRITE,
                             SEC_IMAGE,
                             FileHandle);
    ok_ntstatus(Status, STATUS_SUCCESS);
    if (!NT_SUCCESS(Status))
    {
        skip("Failed to create image section\n");
        NtClose(DataSectionHandle);
        NtClose(FileHandle);
        return;
    }


    ImageBase = ((void*)0);
    ViewSize = 0;
    Status = NtMapViewOfSection(ImageSectionHandle,
                                NtCurrentProcess(),
                                &ImageBase,
                                0,
                                0,
                                ((void*)0),
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READONLY);



    ok_ntstatus(Status, STATUS_IMAGE_MACHINE_TYPE_MISMATCH);

    if (!NT_SUCCESS(Status))
    {
        skip("Failed to map view of image section\n");
        NtClose(ImageSectionHandle);
        NtClose(DataSectionHandle);
        NtClose(FileHandle);
        return;
    }







    *(ULONG*)((PUCHAR)DataBase + 0x800) = 0x12345678;


    NtUnmapViewOfSection(NtCurrentProcess(), DataBase);

    NtClose(DataSectionHandle);


    DataBase = (PUCHAR)ImageBase + 0x20000;
    ViewSize = 0x1000;
    Status = NtAllocateVirtualMemory(NtCurrentProcess(), &DataBase, 0, &ViewSize, MEM_RESERVE, PAGE_NOACCESS);
    ok_ntstatus(Status, STATUS_CONFLICTING_ADDRESSES);


    NtClose(FileHandle);
    NtClose(ImageSectionHandle);
    NtUnmapViewOfSection(NtCurrentProcess(), ImageBase);
}
