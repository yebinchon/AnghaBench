
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_FOLLOW ;
 int ENOENT ;
 int dir_is_empty (char const*) ;
 int log_debug (char*,char const*) ;
 int log_warning_errno (int,char*,char const*) ;
 int path_is_mount_point (char const*,int *,int ) ;

__attribute__((used)) static int path_is_busy(const char *where) {
        int r;


        r = path_is_mount_point(where, ((void*)0), AT_SYMLINK_FOLLOW);
        if (r > 0)
                return 0;


        if (r == -ENOENT)
                return 0;

        if (r < 0)
                return log_warning_errno(r, "Cannot check if \"%s\" is a mount point: %m", where);


        r = dir_is_empty(where);
        if (r < 0)
                return log_warning_errno(r, "Cannot check if \"%s\" is empty: %m", where);
        if (r > 0)
                return 0;

        log_debug("\"%s\" already populated, ignoring.", where);
        return 1;
}
