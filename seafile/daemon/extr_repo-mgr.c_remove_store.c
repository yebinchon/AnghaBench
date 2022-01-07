
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GDir ;


 int G_USEC_PER_SEC ;
 int REMOVE_OBJECTS_BATCH ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char*,int ,int *) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int g_rmdir (char*) ;
 int g_unlink (char*) ;
 int g_usleep (int) ;
 int seaf_message (char*,char*) ;
 int seaf_warning (char*,char*) ;

__attribute__((used)) static int
remove_store (const char *top_store_dir, const char *store_id, int *count)
{
    char *obj_dir = ((void*)0);
    GDir *dir1, *dir2;
    const char *dname1, *dname2;
    char *path1, *path2;

    obj_dir = g_build_filename (top_store_dir, store_id, ((void*)0));

    dir1 = g_dir_open (obj_dir, 0, ((void*)0));
    if (!dir1) {
        g_free (obj_dir);
        return 0;
    }

    seaf_message ("Removing store %s\n", obj_dir);

    while ((dname1 = g_dir_read_name(dir1)) != ((void*)0)) {
        path1 = g_build_filename (obj_dir, dname1, ((void*)0));

        dir2 = g_dir_open (path1, 0, ((void*)0));
        if (!dir2) {
            seaf_warning ("Failed to open obj dir %s.\n", path1);
            g_dir_close (dir1);
            g_free (path1);
            g_free (obj_dir);
            return -1;
        }

        while ((dname2 = g_dir_read_name(dir2)) != ((void*)0)) {
            path2 = g_build_filename (path1, dname2, ((void*)0));
            g_unlink (path2);



            if (++(*count) > REMOVE_OBJECTS_BATCH) {
                g_usleep (5 * G_USEC_PER_SEC);
                *count = 0;
            }

            g_free (path2);
        }
        g_dir_close (dir2);

        g_rmdir (path1);
        g_free (path1);
    }

    g_dir_close (dir1);
    g_rmdir (obj_dir);
    g_free (obj_dir);

    return 0;
}
