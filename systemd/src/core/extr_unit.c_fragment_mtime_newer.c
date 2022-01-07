
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
struct stat {int st_mtim; } ;


 scalar_t__ PATH_STARTSWITH_SET (char const*,char*,char*) ;
 int null_or_empty (struct stat*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ timespec_load (int *) ;

__attribute__((used)) static bool fragment_mtime_newer(const char *path, usec_t mtime, bool path_masked) {
        struct stat st;

        if (!path)
                return 0;



        if (PATH_STARTSWITH_SET(path, "/proc", "/sys"))
                return 0;

        if (stat(path, &st) < 0)

                return 1;

        if (path_masked)

                return !null_or_empty(&st);
        else

                return timespec_load(&st.st_mtim) > mtime;

        return 0;
}
