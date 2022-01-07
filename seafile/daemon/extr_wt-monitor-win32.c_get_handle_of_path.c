
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateFileW (int const*,int ,int,int *,int ,int,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_LIST_DIRECTORY ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int g_free (char*) ;
 char* g_utf16_to_utf8 (int const*,int,int *,int *,int *) ;
 int seaf_warning (char*,char*,int ) ;

__attribute__((used)) static HANDLE
get_handle_of_path(const wchar_t *path)
{
    HANDLE dir_handle = ((void*)0);

    dir_handle = CreateFileW
        (path,
         FILE_LIST_DIRECTORY,
         FILE_SHARE_DELETE | FILE_SHARE_READ
         | FILE_SHARE_WRITE,
         ((void*)0),
         OPEN_EXISTING,
         FILE_FLAG_BACKUP_SEMANTICS |
         FILE_FLAG_OVERLAPPED,
         ((void*)0));

    if (dir_handle == INVALID_HANDLE_VALUE) {
        char *path_utf8 = g_utf16_to_utf8 (path, -1, ((void*)0), ((void*)0), ((void*)0));
        seaf_warning("failed to create dir handle for path %s, "
                     "error code %lu", path_utf8, GetLastError());
        g_free (path_utf8);
        return ((void*)0);
    }

    return dir_handle;
}
