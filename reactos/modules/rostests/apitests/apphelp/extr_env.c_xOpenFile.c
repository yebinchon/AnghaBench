
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
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
 int RtlDosPathNameToNtPathName_U (int *,int *,int *,int *) ;
 int RtlFreeUnicodeString (int *) ;
 int SYNCHRONIZE ;
 int skip (char*,int ) ;
 int wine_dbgstr_w (int *) ;

HANDLE xOpenFile(WCHAR* ApplicationName)
{
    UNICODE_STRING FileName;
    OBJECT_ATTRIBUTES ObjectAttributes;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS Status;
    HANDLE FileHandle;

    if (!RtlDosPathNameToNtPathName_U(ApplicationName, &FileName, ((void*)0), ((void*)0)))
    {
        skip("Unable to translate %s to Nt path\n", wine_dbgstr_w(ApplicationName));
        return ((void*)0);
    }


    InitializeObjectAttributes(&ObjectAttributes, &FileName, OBJ_CASE_INSENSITIVE, ((void*)0), ((void*)0));
    Status = NtOpenFile(&FileHandle,
                        SYNCHRONIZE |
                        FILE_READ_ATTRIBUTES |
                        FILE_READ_DATA |
                        FILE_EXECUTE,
                        &ObjectAttributes,
                        &IoStatusBlock,
                        FILE_SHARE_READ | FILE_SHARE_DELETE,
                        FILE_SYNCHRONOUS_IO_NONALERT |
                        FILE_NON_DIRECTORY_FILE);

    RtlFreeUnicodeString(&FileName);

    if (!NT_SUCCESS(Status))
        return ((void*)0);

    return FileHandle;
}
