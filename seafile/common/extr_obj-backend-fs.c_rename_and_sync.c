
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 scalar_t__ EINVAL ;
 int GetLastError () ;
 int MOVEFILE_REPLACE_EXISTING ;
 int MOVEFILE_WRITE_THROUGH ;
 int MoveFileExW (char*,char*,int) ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ fsync (int) ;
 int g_free (char*) ;
 char* g_path_get_dirname (char const*) ;
 char* g_utf8_to_utf16 (char const*,int,int *,int *,int *) ;
 int open (char*,int ) ;
 scalar_t__ rename (char const*,char const*) ;
 int seaf_warning (char*,char const*,...) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
rename_and_sync (const char *tmp_path, const char *obj_path)
{

    char *parent_dir;
    int ret = 0;

    if (rename (tmp_path, obj_path) < 0) {
        seaf_warning ("Failed to rename from %s to %s: %s.\n",
                      tmp_path, obj_path, strerror(errno));
        return -1;
    }

    parent_dir = g_path_get_dirname (obj_path);
    int dir_fd = open (parent_dir, O_RDONLY);
    if (dir_fd < 0) {
        seaf_warning ("Failed to open dir %s: %s.\n", parent_dir, strerror(errno));
        goto out;
    }



    if (fsync (dir_fd) < 0) {
        if (errno != EINVAL) {
            seaf_warning ("Failed to fsync dir %s: %s.\n",
                          parent_dir, strerror(errno));
            ret = -1;
        }
        goto out;
    }

out:
    g_free (parent_dir);
    if (dir_fd >= 0)
        close (dir_fd);
    return ret;
}
