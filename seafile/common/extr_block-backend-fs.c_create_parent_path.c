
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_FILE_TEST_EXISTS ;
 scalar_t__ g_file_test (char*,int ) ;
 int g_free (char*) ;
 scalar_t__ g_mkdir_with_parents (char*,int) ;
 char* g_path_get_dirname (char const*) ;
 int seaf_warning (char*,char*) ;

__attribute__((used)) static int
create_parent_path (const char *path)
{
    char *dir = g_path_get_dirname (path);
    if (!dir)
        return -1;

    if (g_file_test (dir, G_FILE_TEST_EXISTS)) {
        g_free (dir);
        return 0;
    }

    if (g_mkdir_with_parents (dir, 0777) < 0) {
        seaf_warning ("Failed to create object parent path: %s.\n", dir);
        g_free (dir);
        return -1;
    }

    g_free (dir);
    return 0;
}
