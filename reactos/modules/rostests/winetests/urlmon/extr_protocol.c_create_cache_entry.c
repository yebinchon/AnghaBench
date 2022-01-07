
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int content ;
typedef int cache_headers ;
typedef int WCHAR ;
struct TYPE_7__ {int LowPart; int HighPart; } ;
struct TYPE_8__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_9__ {int dwLowDateTime; int dwHighDateTime; } ;
typedef int LONGLONG ;
typedef scalar_t__ HANDLE ;
typedef TYPE_3__ FILETIME ;
typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 int CommitUrlCacheEntryA (char const*,char*,TYPE_3__,TYPE_3__,int ,char*,int,char*,int ) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int CreateUrlCacheEntryA (char const*,int,char*,char*,int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetSystemTimeAsFileTime (TYPE_3__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int NORMAL_CACHE_ENTRY ;
 int WriteFile (scalar_t__,char*,int,int *,int *) ;
 int ok (int,char*,...) ;
 int trace (char*) ;
 char* w2a (int const*) ;

__attribute__((used)) static void create_cache_entry(const WCHAR *urlw)
{
    FILETIME now, tomorrow, yesterday;
    char file_path[MAX_PATH];
    BYTE content[1000];
    ULARGE_INTEGER li;
    const char *url;
    HANDLE file;
    DWORD size;
    unsigned i;
    BOOL res;

    BYTE cache_headers[] = "HTTP/1.1 200 OK\r\n\r\n";

    trace("Testing cache read...\n");

    url = w2a(urlw);

    for(i = 0; i < sizeof(content); i++)
        content[i] = '0' + (i%10);

    GetSystemTimeAsFileTime(&now);
    li.u.HighPart = now.dwHighDateTime;
    li.u.LowPart = now.dwLowDateTime;
    li.QuadPart += (LONGLONG)10000000 * 3600 * 24;
    tomorrow.dwHighDateTime = li.u.HighPart;
    tomorrow.dwLowDateTime = li.u.LowPart;
    li.QuadPart -= (LONGLONG)10000000 * 3600 * 24 * 2;
    yesterday.dwHighDateTime = li.u.HighPart;
    yesterday.dwLowDateTime = li.u.LowPart;

    res = CreateUrlCacheEntryA(url, sizeof(content), "", file_path, 0);
    ok(res, "CreateUrlCacheEntryA failed: %u\n", GetLastError());

    file = CreateFileA(file_path, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");

    WriteFile(file, content, sizeof(content), &size, ((void*)0));
    CloseHandle(file);

    res = CommitUrlCacheEntryA(url, file_path, tomorrow, yesterday, NORMAL_CACHE_ENTRY,
                               cache_headers, sizeof(cache_headers)-1, "", 0);
    ok(res, "CommitUrlCacheEntryA failed: %u\n", GetLastError());
}
