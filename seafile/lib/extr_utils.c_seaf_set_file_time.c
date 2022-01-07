
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ time_t ;
struct utimbuf {scalar_t__ modtime; int actime; } ;
struct stat {int st_atime; } ;
typedef scalar_t__ guint64 ;


 int errno ;
 int g_free (int *) ;
 int g_warning (char*,char const*,int ) ;
 scalar_t__ set_utc_file_time (char const*,int *,scalar_t__) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;
 int utime (char const*,struct utimbuf*) ;
 int * win32_long_path (char const*) ;

int
seaf_set_file_time (const char *path, guint64 mtime)
{

    struct stat st;
    struct utimbuf times;

    if (stat (path, &st) < 0) {
        g_warning ("Failed to stat %s: %s.\n", path, strerror(errno));
        return -1;
    }

    times.actime = st.st_atime;
    times.modtime = (time_t)mtime;

    return utime (path, &times);
}
