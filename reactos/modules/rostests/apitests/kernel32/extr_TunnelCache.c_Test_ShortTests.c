
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cAlternateFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int UCHAR ;
typedef int ShortName ;
typedef scalar_t__ HANDLE ;
typedef char CHAR ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateDirectory (char*,int *) ;
 scalar_t__ CreateFile (char*,int,int ,int *,int ,int ,int *) ;
 int DeleteFile (char*) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (char*,TYPE_1__*) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetCurrentDirectory (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MOVEFILE_REPLACE_EXISTING ;
 scalar_t__ MoveFile (char*,char*) ;
 scalar_t__ MoveFileEx (char*,char*,int ) ;
 int RemoveDirectory (char*) ;
 int RtlCopyMemory (char*,int ,int) ;
 scalar_t__ SetCurrentDirectory (char*) ;
 int ok (int,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static
void
Test_ShortTests(void)
{
    UCHAR i = 0;
    CHAR ShortName[14];
    HANDLE hFile, hFind;
    WIN32_FIND_DATA FileInfo;
    CHAR TestDir[] = "XTestDirTunnelCache";
    CHAR OldDir[MAX_PATH];


    if (GetCurrentDirectory(MAX_PATH, OldDir) == 0)
    {
        win_skip("No test directory available\n");
        return;
    }


    for (; i < 10; ++i)
    {
        TestDir[0] = '0' + i;
        if (CreateDirectory(TestDir, ((void*)0)))
        {
            if (SetCurrentDirectory(TestDir) == 0)
            {
                RemoveDirectory(TestDir);
                win_skip("No test directory available\n");
                return;
            }

            break;
        }
    }

    if (i == 10)
    {
        win_skip("No test directory available\n");
        return;
    }

    hFile = CreateFile("verylongfilename",
                       GENERIC_READ | GENERIC_WRITE,
                       0, ((void*)0),
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));
    ok(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    CloseHandle(hFile);

    hFind = FindFirstFile("verylongfilename", &FileInfo);
    ok(hFind != INVALID_HANDLE_VALUE, "FindFirstFile() failed\n");
    FindClose(hFind);
    RtlCopyMemory(ShortName, FileInfo.cAlternateFileName, sizeof(ShortName));

    ok(MoveFile("verylongfilename", "verylongfilename2") != FALSE, "MoveFile() failed\n");
    hFind = FindFirstFile("verylongfilename2", &FileInfo);
    ok(hFind != INVALID_HANDLE_VALUE, "FindFirstFile() failed\n");
    FindClose(hFind);
    ok(strcmp(FileInfo.cAlternateFileName, ShortName) == 0, "strcmp() failed\n");

    hFile = CreateFile("randomfilename",
                       GENERIC_READ | GENERIC_WRITE,
                       0, ((void*)0),
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));
    ok(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    CloseHandle(hFile);

    ok(MoveFileEx("randomfilename", "verylongfilename2", MOVEFILE_REPLACE_EXISTING) != FALSE, "MoveFile() failed\n");
    hFind = FindFirstFile("verylongfilename2", &FileInfo);
    ok(hFind != INVALID_HANDLE_VALUE, "FindFirstFile() failed\n");
    FindClose(hFind);
    ok(strcmp(FileInfo.cAlternateFileName, ShortName) == 0, "strcmp() failed\n");

    DeleteFile("randomfilename");
    DeleteFile("verylongfilename");
    DeleteFile("verylongfilename2");

    SetCurrentDirectory(OldDir);
    RemoveDirectory(TestDir);
}
