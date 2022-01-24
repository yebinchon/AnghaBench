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
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DiskFormat ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FILE_SYNCHRONOUS_IO_NONALERT ; 
 int GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECTOR_SIZE ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC14(int argc, char ** argv)
{
    HANDLE FileHandle;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    WCHAR Buffer[MAX_PATH];
    UNICODE_STRING Name;
    PVOID Sector;

    Sector = FUNC11(SECTOR_SIZE);
    if (Sector == NULL)
    {
        FUNC9(stderr, "Failed allocating memory!\n");
        return 0;
    }

    /* We first open disk */
    FUNC13(Buffer, DiskFormat, 0, 0);
    FUNC8(&Name, Buffer);
    FUNC3(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);

    Status = FUNC6(&FileHandle,
                        GENERIC_READ | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        0,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    if (!FUNC4(Status))
    {
        FUNC10(Sector);
        FUNC9(stderr, "Failed opening disk! %x\n", Status);
        return 0;
    }

    /* Read first sector of the disk */
    Status = FUNC7(FileHandle,
                        NULL,
                        NULL,
                        NULL,
                        &IoStatusBlock,
                        Sector,
                        SECTOR_SIZE,
                        NULL,
                        NULL);
    FUNC5(FileHandle);
    if (!FUNC4(Status))
    {
        FUNC10(Sector);
        FUNC9(stderr, "Failed reading sector 0! %x\n", Status);
        return 0;
    }

    /* Is it FAT? */
    if (FUNC0(Sector))
    {
        FUNC12("Sector 0 seems to be FAT boot sector\n");
    }
    /* Is it NTFS? */
    else if (FUNC2(Sector))
    {
        FUNC12("Sector 0 seems to be NTFS boot sector\n");
    }
    /* Is it MBR? */
    else if (FUNC1(Sector))
    {
        FUNC12("Sector 0 might be MBR\n");
    }
    /* We don't support anything else */
    else
    {
        FUNC12("Sector 0 not recognized\n");
    }

    /* Redo it with first partition */
    FUNC13(Buffer, DiskFormat, 0, 1);
    FUNC8(&Name, Buffer);
    FUNC3(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);

    Status = FUNC6(&FileHandle,
                        GENERIC_READ | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    if (!FUNC4(Status))
    {
        FUNC10(Sector);
        FUNC9(stderr, "Failed opening partition! %x\n", Status);
        return 0;
    }

    /* Read first sector of the partition */
    Status = FUNC7(FileHandle,
                        NULL,
                        NULL,
                        NULL,
                        &IoStatusBlock,
                        Sector,
                        SECTOR_SIZE,
                        NULL,
                        NULL);
    if (!FUNC4(Status))
    {
        FUNC10(Sector);
        FUNC9(stderr, "Failed reading first sector of the partition! %x\n", Status);
        return 0;
    }

    /* Is it FAT? */
    if (FUNC0(Sector))
    {
        FUNC12("Seems to be a FAT partittion\n");
    }
    /* Is it NTFS? */
    else if (FUNC2(Sector))
    {
        FUNC12("Seems to be a NTFS partition\n");
    }
    /* Is it MBR? */
    else if (FUNC1(Sector))
    {
        FUNC12("Seems to be MBR\n");
    }
    /* We don't support anything else */
    else
    {
        FUNC12("Not recognized\n");
    }

    FUNC10(Sector);

    return 0;
}