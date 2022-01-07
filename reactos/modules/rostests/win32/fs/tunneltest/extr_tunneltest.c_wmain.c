
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef int TempPath ;
typedef scalar_t__ HANDLE ;
typedef int FileSystemName ;
typedef int File2 ;
typedef int FILETIME ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (char*) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int Fat32Name ;
 int FatName ;
 int GENERIC_READ ;
 scalar_t__ GetFileTime (scalar_t__,int *,int *,int *) ;
 int GetLastError () ;
 scalar_t__ GetTempPathW (int,char*) ;
 scalar_t__ GetVolumeInformationW (char*,int *,int ,int *,int *,int *,char*,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ MoveFileW (char*,char*) ;
 int NtfsName ;
 int OPEN_EXISTING ;
 int RtlCompareMemory (int *,int *,int) ;
 scalar_t__ RtlCompareUnicodeString (TYPE_1__*,int *,scalar_t__) ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 int Sleep (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdout ;
 int wcscat (char*,char*) ;
 int wcscpy (char*,char*) ;
 int wcslen (char*) ;

int wmain(int argc, WCHAR * argv[])
{
    WCHAR TempPath[MAX_PATH + 1];
    WCHAR CopyPath[MAX_PATH + 1];
    WCHAR RootPath[] = {'A', ':', '\\', '\0'};
    WCHAR FileSystemName[sizeof("FAT32")];
    UNICODE_STRING FSName;
    WCHAR File1[] = {'\\', 'f', 'i', 'l', 'e', '1', '\0'};
    WCHAR File2[] = {'\\', 'f', 'i', 'l', 'e', '2', '\0'};
    ULONG FilePos;
    HANDLE hFile;
    FILETIME FileTime, File1Time;


    if (GetTempPathW(sizeof(TempPath) / sizeof(TempPath[0]), TempPath) == 0)
    {
        fprintf(stderr, "Failed to get temp path\n");
        return GetLastError();
    }


    RootPath[0] = TempPath[0];


    if (GetVolumeInformationW(RootPath, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), FileSystemName, sizeof(FileSystemName) / sizeof(FileSystemName[0])) == 0)
    {
        fprintf(stderr, "Failed to get volume info\n");
        return GetLastError();
    }


    RtlInitUnicodeString(&FSName, FileSystemName);


    if (RtlCompareUnicodeString(&FSName, &FatName, FALSE) != 0 &&
        RtlCompareUnicodeString(&FSName, &Fat32Name, FALSE) != 0 &&
        RtlCompareUnicodeString(&FSName, &NtfsName, FALSE) != 0)
    {
        fprintf(stderr, "!(FAT, FAT32, NTFS): \'%S\'\n", FSName.Buffer);
        return 0;
    }


    FilePos = wcslen(TempPath);
    if (FilePos > MAX_PATH - sizeof(File2) / sizeof(WCHAR))
    {
        fprintf(stderr, "Files won't fit\n");
        return 0;
    }


    wcscat(TempPath, File1);
    hFile = CreateFileW(TempPath, 0, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        fprintf(stderr, "Failed to create file1\n");
        return GetLastError();
    }



    if (GetFileTime(hFile, &FileTime, ((void*)0), ((void*)0)) == FALSE)
    {
        fprintf(stderr, "Failed to read creation time\n");
        CloseHandle(hFile);
        return GetLastError();
    }

    CloseHandle(hFile);



    Sleep(1000);



    TempPath[FilePos - 1] = 0;
    wcscat(TempPath, File2);
    hFile = CreateFileW(TempPath, 0, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        fprintf(stderr, "Failed to create file2\n");
        return GetLastError();
    }
    CloseHandle(hFile);


    TempPath[FilePos] = 0;
    wcscat(TempPath, File1);
    wcscpy(CopyPath, TempPath);

    CopyPath[wcslen(TempPath) - 1] = 0;
    if (MoveFileW(TempPath, CopyPath) == 0)
    {
        fprintf(stderr, "Failed to rename file1\n");
        return GetLastError();
    }


    wcscpy(CopyPath, TempPath);

    CopyPath[wcslen(TempPath) - 1] = L'2';
    if (MoveFileW(CopyPath, TempPath) == 0)
    {
        fprintf(stderr, "Failed to rename file2\n");
        return GetLastError();
    }


    hFile = CreateFileW(TempPath, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        fprintf(stderr, "Failed to open file1\n");
        return GetLastError();
    }
    if (GetFileTime(hFile, &File1Time, ((void*)0), ((void*)0)) == FALSE)
    {
        fprintf(stderr, "Failed to read creation time\n");
        CloseHandle(hFile);
        return GetLastError();
    }
    CloseHandle(hFile);


    CopyPath[wcslen(TempPath) - 1] = 0;
    DeleteFileW(TempPath);
    DeleteFileW(CopyPath);


    if (RtlCompareMemory(&FileTime, &File1Time, sizeof(FILETIME)) == sizeof(FILETIME))
    {
        fprintf(stdout, "Tunnel cache in action\n");
        return 0;
    }

    fprintf(stdout, "Tunnel cache NOT in action\n");
    return 0;
}
