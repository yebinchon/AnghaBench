
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GList ;
typedef int GDir ;


 int FALSE ;
 int TRUE ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int should_ignore (char const*,char const*,int *) ;

__attribute__((used)) static gboolean
is_empty_dir (const char *path, GList *ignore_list)
{
    GDir *dir;
    const char *dname;
    gboolean ret = TRUE;

    dir = g_dir_open (path, 0, ((void*)0));
    if (!dir) {
        return FALSE;
    }

    while ((dname = g_dir_read_name(dir)) != ((void*)0)) {
        if (!should_ignore(path, dname, ignore_list)) {
            ret = FALSE;
            break;
        }
    }
    g_dir_close (dir);

    return ret;
}
