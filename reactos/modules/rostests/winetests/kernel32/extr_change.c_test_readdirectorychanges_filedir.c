
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int InternalHigh; scalar_t__ Internal; int hEvent; } ;
struct TYPE_4__ {scalar_t__ NextEntryOffset; scalar_t__ Action; int FileNameLength; int FileName; } ;
typedef TYPE_1__* PFILE_NOTIFY_INFORMATION ;
typedef TYPE_2__ OVERLAPPED ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateDirectoryW (char*,int *) ;
 int CreateEventW (int *,int ,int ,int *) ;
 scalar_t__ CreateFileW (char*,int,int,int *,int ,int,int *) ;
 scalar_t__ DeleteFileW (char*) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ FILE_ACTION_ADDED ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_LIST_DIRECTORY ;
 int FILE_NOTIFY_CHANGE_FILE_NAME ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetTempPathW (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 scalar_t__ RemoveDirectoryW (char*) ;
 scalar_t__ STATUS_SUCCESS ;
 int SYNCHRONIZE ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char*) ;
 int memcmp (int ,char const*,int) ;
 int ok (int,char*) ;
 scalar_t__ pReadDirectoryChangesW (scalar_t__,char*,int,scalar_t__,int,int *,TYPE_2__*,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_readdirectorychanges_filedir(void)
{
    NTSTATUS r;
    HANDLE hdir, hfile;
    char buffer[0x1000];
    DWORD fflags, filter = 0;
    OVERLAPPED ov;
    WCHAR path[MAX_PATH], subdir[MAX_PATH], file[MAX_PATH];
    static const WCHAR szBoo[] = { '\\','b','o','o',0 };
    static const WCHAR szHoo[] = { '\\','h','o','o',0 };
    static const WCHAR szFoo[] = { '\\','f','o','o',0 };
    PFILE_NOTIFY_INFORMATION pfni;

    SetLastError(0xdeadbeef);
    r = GetTempPathW( MAX_PATH, path );
    if (!r && (GetLastError() == ERROR_CALL_NOT_IMPLEMENTED))
    {
        win_skip("GetTempPathW is not implemented\n");
        return;
    }
    ok( r != 0, "temp path failed\n");
    if (!r)
        return;

    lstrcatW( path, szBoo );
    lstrcpyW( subdir, path );
    lstrcatW( subdir, szHoo );

    lstrcpyW( file, path );
    lstrcatW( file, szFoo );

    DeleteFileW( file );
    RemoveDirectoryW( subdir );
    RemoveDirectoryW( path );

    r = CreateDirectoryW(path, ((void*)0));
    ok( r == TRUE, "failed to create directory\n");

    fflags = FILE_FLAG_BACKUP_SEMANTICS | FILE_FLAG_OVERLAPPED;
    hdir = CreateFileW(path, GENERIC_READ|SYNCHRONIZE|FILE_LIST_DIRECTORY,
                        FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0),
                        OPEN_EXISTING, fflags, ((void*)0));
    ok( hdir != INVALID_HANDLE_VALUE, "failed to open directory\n");

    ov.hEvent = CreateEventW( ((void*)0), 0, 0, ((void*)0) );

    filter = FILE_NOTIFY_CHANGE_FILE_NAME;

    r = pReadDirectoryChangesW(hdir,buffer,sizeof buffer,TRUE,filter,((void*)0),&ov,((void*)0));
    ok(r==TRUE, "should return true\n");

    r = WaitForSingleObject( ov.hEvent, 10 );
    ok( r == WAIT_TIMEOUT, "should timeout\n" );

    r = CreateDirectoryW( subdir, ((void*)0) );
    ok( r == TRUE, "failed to create directory\n");

    hfile = CreateFileW( file, GENERIC_READ|GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0) );
    ok( hfile != INVALID_HANDLE_VALUE, "failed to create file\n");
    ok( CloseHandle(hfile), "failed to close file\n");

    r = WaitForSingleObject( ov.hEvent, 1000 );
    ok( r == WAIT_OBJECT_0, "event should be ready\n" );

    ok( (NTSTATUS)ov.Internal == STATUS_SUCCESS, "ov.Internal wrong\n");
    ok( ov.InternalHigh == 0x12, "ov.InternalHigh wrong\n");

    pfni = (PFILE_NOTIFY_INFORMATION) buffer;
    ok( pfni->NextEntryOffset == 0, "offset wrong\n" );
    ok( pfni->Action == FILE_ACTION_ADDED, "action wrong\n" );
    ok( pfni->FileNameLength == 6, "len wrong\n" );
    ok( !memcmp(pfni->FileName,&szFoo[1],6), "name wrong\n" );

    r = DeleteFileW( file );
    ok( r == TRUE, "failed to delete file\n");

    r = RemoveDirectoryW( subdir );
    ok( r == TRUE, "failed to remove directory\n");

    CloseHandle(hdir);

    r = RemoveDirectoryW( path );
    ok( r == TRUE, "failed to remove directory\n");
}
