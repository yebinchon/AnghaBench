
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct utimbuf {int modtime; int actime; } ;
struct timespec {int member_1; int member_0; } ;
struct TYPE_3__ {int st_mode; int st_gid; int st_uid; struct timespec st_mtim; int st_mtime; } ;
typedef TYPE_1__ stat_t ;


 int AT_FDCWD ;
 int UTIL_isRegularFile (char const*) ;
 int UTIME_NOW ;
 scalar_t__ chmod (char const*,int) ;
 scalar_t__ chown (char const*,int ,int ) ;
 scalar_t__ errno ;
 int time (int *) ;
 scalar_t__ utime (char const*,struct utimbuf*) ;
 scalar_t__ utimensat (int ,char const*,struct timespec*,int ) ;

int UTIL_setFileStat(const char *filename, stat_t *statbuf)
{
    int res = 0;

    if (!UTIL_isRegularFile(filename))
        return -1;



    {
        struct utimbuf timebuf;
        timebuf.actime = time(((void*)0));
        timebuf.modtime = statbuf->st_mtime;
        res += utime(filename, &timebuf);
    }
    res += chown(filename, statbuf->st_uid, statbuf->st_gid);


    res += chmod(filename, statbuf->st_mode & 07777);

    errno = 0;
    return -res;
}
