
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int memcmp (char*,int ,scalar_t__) ;
 int ok (int,char*,int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static BOOL file_matches_data(LPCSTR file, LPCSTR data)
{
    DWORD len, data_len = strlen(data);
    HANDLE handle;
    char buf[128];

    handle = CreateFileA(file, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    ok(handle != INVALID_HANDLE_VALUE, "failed to open %s (%u)\n", file, GetLastError());

    if (ReadFile(handle, buf, sizeof(buf), &len, ((void*)0)) && len >= data_len)
    {
        CloseHandle(handle);
        return !memcmp(buf, data, data_len);
    }
    CloseHandle(handle);
    return FALSE;
}
