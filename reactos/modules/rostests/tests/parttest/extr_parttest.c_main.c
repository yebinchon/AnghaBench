
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int * PVOID ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 scalar_t__ CheckAgainstFAT (int *) ;
 scalar_t__ CheckAgainstMBR (int *) ;
 scalar_t__ CheckAgainstNTFS (int *) ;
 int DiskFormat ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int GENERIC_READ ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAX_PATH ;
 int NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtOpenFile (int *,int,int *,int *,int,int ) ;
 int NtReadFile (int ,int *,int *,int *,int *,int *,int ,int *,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int *) ;
 int SECTOR_SIZE ;
 int SYNCHRONIZE ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int * malloc (int ) ;
 int printf (char*) ;
 int stderr ;
 int swprintf (int *,int ,int ,int) ;

int main(int argc, char ** argv)
{
    HANDLE FileHandle;
    NTSTATUS Status;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    WCHAR Buffer[MAX_PATH];
    UNICODE_STRING Name;
    PVOID Sector;

    Sector = malloc(SECTOR_SIZE);
    if (Sector == ((void*)0))
    {
        fprintf(stderr, "Failed allocating memory!\n");
        return 0;
    }


    swprintf(Buffer, DiskFormat, 0, 0);
    RtlInitUnicodeString(&Name, Buffer);
    InitializeObjectAttributes(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenFile(&FileHandle,
                        GENERIC_READ | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        0,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    if (!NT_SUCCESS(Status))
    {
        free(Sector);
        fprintf(stderr, "Failed opening disk! %lx\n", Status);
        return 0;
    }


    Status = NtReadFile(FileHandle,
                        ((void*)0),
                        ((void*)0),
                        ((void*)0),
                        &IoStatusBlock,
                        Sector,
                        SECTOR_SIZE,
                        ((void*)0),
                        ((void*)0));
    NtClose(FileHandle);
    if (!NT_SUCCESS(Status))
    {
        free(Sector);
        fprintf(stderr, "Failed reading sector 0! %lx\n", Status);
        return 0;
    }


    if (CheckAgainstFAT(Sector))
    {
        printf("Sector 0 seems to be FAT boot sector\n");
    }

    else if (CheckAgainstNTFS(Sector))
    {
        printf("Sector 0 seems to be NTFS boot sector\n");
    }

    else if (CheckAgainstMBR(Sector))
    {
        printf("Sector 0 might be MBR\n");
    }

    else
    {
        printf("Sector 0 not recognized\n");
    }


    swprintf(Buffer, DiskFormat, 0, 1);
    RtlInitUnicodeString(&Name, Buffer);
    InitializeObjectAttributes(&ObjectAttributes,
                               &Name,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenFile(&FileHandle,
                        GENERIC_READ | SYNCHRONIZE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                        FILE_SYNCHRONOUS_IO_NONALERT);
    if (!NT_SUCCESS(Status))
    {
        free(Sector);
        fprintf(stderr, "Failed opening partition! %lx\n", Status);
        return 0;
    }


    Status = NtReadFile(FileHandle,
                        ((void*)0),
                        ((void*)0),
                        ((void*)0),
                        &IoStatusBlock,
                        Sector,
                        SECTOR_SIZE,
                        ((void*)0),
                        ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        free(Sector);
        fprintf(stderr, "Failed reading first sector of the partition! %lx\n", Status);
        return 0;
    }


    if (CheckAgainstFAT(Sector))
    {
        printf("Seems to be a FAT partittion\n");
    }

    else if (CheckAgainstNTFS(Sector))
    {
        printf("Seems to be a NTFS partition\n");
    }

    else if (CheckAgainstMBR(Sector))
    {
        printf("Seems to be MBR\n");
    }

    else
    {
        printf("Not recognized\n");
    }

    free(Sector);

    return 0;
}
