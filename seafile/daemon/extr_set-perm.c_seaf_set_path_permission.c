
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int gboolean ;
typedef scalar_t__ SeafPathPerm ;


 scalar_t__ SEAF_PATH_PERM_RO ;
 scalar_t__ SEAF_PATH_PERM_RW ;
 int S_IWUSR ;
 scalar_t__ chmod (char const*,int ) ;
 int errno ;
 int seaf_warning (char*,char const*,int ,...) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;

int
seaf_set_path_permission (const char *path, SeafPathPerm perm, gboolean recursive)
{
    struct stat st;
    mode_t new_mode;

    if (stat (path, &st) < 0) {
        seaf_warning ("Failed to stat %s: %s\n", path, strerror(errno));
        return -1;
    }

    new_mode = st.st_mode;
    if (perm == SEAF_PATH_PERM_RO)
        new_mode &= ~(S_IWUSR);
    else if (perm == SEAF_PATH_PERM_RW)
        new_mode |= S_IWUSR;

    if (chmod (path, new_mode) < 0) {
        seaf_warning ("Failed to chmod %s to %d: %s\n", path, new_mode, strerror(errno));
        return -1;
    }

    return 0;
}
