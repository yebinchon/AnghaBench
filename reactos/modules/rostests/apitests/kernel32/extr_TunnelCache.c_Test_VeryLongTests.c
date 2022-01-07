
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;
typedef char CHAR ;


 int CREATE_NEW ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateDirectory (char*,int *) ;
 scalar_t__ CreateFile (char*,int,int ,int *,int ,int ,int *) ;
 int DeleteFile (char*) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetCurrentDirectory (int,char*) ;
 scalar_t__ GetFileTime (scalar_t__,int *,int *,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ MoveFile (char*,char*) ;
 int OPEN_EXISTING ;
 int RemoveDirectory (char*) ;
 int RtlCompareMemory (int *,int *,int) ;
 scalar_t__ SetCurrentDirectory (char*) ;
 int Sleep (int) ;
 int ok (int,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static
void
Test_VeryLongTests(void)
{
    UCHAR i = 0;
    HANDLE hFile;
    CHAR TestDir[] = "XTestDirTunnelCache";
    CHAR OldDir[MAX_PATH];
    FILETIME FileTime, File1Time;

    win_skip("Too long, see: ROSTESTS-177\n");
    return;


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

    hFile = CreateFile("file1",
                       GENERIC_READ | GENERIC_WRITE,
                       0, ((void*)0),
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));
    ok(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    ok(GetFileTime(hFile, &FileTime, ((void*)0), ((void*)0)) != FALSE, "GetFileTime() failed\n");
    CloseHandle(hFile);



    Sleep(1000);

    hFile = CreateFile("file2",
                       GENERIC_READ | GENERIC_WRITE,
                       0, ((void*)0),
                       CREATE_NEW,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));
    ok(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    CloseHandle(hFile);

    ok(MoveFile("file1", "file") != FALSE, "MoveFile() failed\n");



    Sleep(16000);
    ok(MoveFile("file2", "file1") != FALSE, "MoveFile() failed\n");

    hFile = CreateFile("file1",
                       GENERIC_READ,
                       0, ((void*)0),
                       OPEN_EXISTING,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));
    ok(hFile != INVALID_HANDLE_VALUE, "CreateFile() failed\n");
    ok(GetFileTime(hFile, &File1Time, ((void*)0), ((void*)0)) != FALSE, "GetFileTime() failed\n");
    CloseHandle(hFile);

    ok(RtlCompareMemory(&FileTime, &File1Time, sizeof(FILETIME)) != sizeof(FILETIME), "Tunnel cache still in action?\n");

    DeleteFile("file2");
    DeleteFile("file1");
    DeleteFile("file");

    SetCurrentDirectory(OldDir);
    RemoveDirectory(TestDir);
}
