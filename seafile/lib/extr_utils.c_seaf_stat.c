
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int __int64 ;
struct TYPE_7__ {int dwFileAttributes; scalar_t__ nFileSizeLow; scalar_t__ nFileSizeHigh; int ftLastWriteTime; int ftCreationTime; int ftLastAccessTime; } ;
typedef TYPE_1__ WIN32_FILE_ATTRIBUTE_DATA ;
struct TYPE_8__ {int st_mode; scalar_t__ st_size; void* st_mtime; void* st_ctime; void* st_atime; } ;
typedef TYPE_2__ SeafStat ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesExW (int *,int ,TYPE_1__*) ;
 int GetFileExInfoStandard ;
 int GetLastError () ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRUSR ;
 int S_IRWXU ;
 int S_IWUSR ;
 int errno ;
 void* file_time_to_unix_time (int *) ;
 int g_free (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int stat (char const*,TYPE_2__*) ;
 int * win32_long_path (char const*) ;
 int windows_error_to_errno (int ) ;

int
seaf_stat (const char *path, SeafStat *st)
{
    return stat (path, st);

}
