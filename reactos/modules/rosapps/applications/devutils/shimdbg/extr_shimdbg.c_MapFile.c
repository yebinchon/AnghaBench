
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int * HANDLE ;


 int FILE_EXECUTE ;
 int FILE_NON_DIRECTORY_FILE ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_READ_DATA ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtOpenFile (int **,int,int *,int *,int,int) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlCreateUnicodeStringFromAsciiz (int *,char*) ;
 int SYNCHRONIZE ;
 int xprintf (char*) ;

HANDLE MapFile(char* filename, UNICODE_STRING* PathName, int MapIt)
{
    OBJECT_ATTRIBUTES LocalObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;
    HANDLE FileHandle = ((void*)0);
    RtlCreateUnicodeStringFromAsciiz(PathName, filename);
    if (MapIt)
    {
        InitializeObjectAttributes(&LocalObjectAttributes, PathName,
            OBJ_CASE_INSENSITIVE, ((void*)0), ((void*)0));
        Status = NtOpenFile(&FileHandle,
                    SYNCHRONIZE | FILE_READ_ATTRIBUTES | FILE_READ_DATA | FILE_EXECUTE,
                    &LocalObjectAttributes, &IoStatusBlock,
                    FILE_SHARE_READ | FILE_SHARE_DELETE,
                    FILE_SYNCHRONOUS_IO_NONALERT | FILE_NON_DIRECTORY_FILE);
        if (!NT_SUCCESS(Status))
        {
            xprintf("Failed opening the file, using a NULL handle\n");
            FileHandle = ((void*)0);
        }
    }
    return FileHandle;
}
