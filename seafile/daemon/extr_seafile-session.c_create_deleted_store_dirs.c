
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ checkdir_with_mkdir (char const*) ;
 char* g_build_filename (char const*,char*,int *) ;
 int g_free (char*) ;
 int seaf_warning (char*,char const*) ;

__attribute__((used)) static int
create_deleted_store_dirs (const char *deleted_store)
{
    char *commits = ((void*)0), *fs = ((void*)0), *blocks = ((void*)0);
    int ret = 0;

    if (checkdir_with_mkdir (deleted_store) < 0) {
        seaf_warning ("Directory %s does not exist and is unable to create\n",
                      deleted_store);
        return -1;
    }

    commits = g_build_filename (deleted_store, "commits", ((void*)0));
    if (checkdir_with_mkdir (commits) < 0) {
        seaf_warning ("Directory %s does not exist and is unable to create\n",
                      commits);
        ret = -1;
        goto out;
    }

    fs = g_build_filename (deleted_store, "fs", ((void*)0));
    if (checkdir_with_mkdir (fs) < 0) {
        seaf_warning ("Directory %s does not exist and is unable to create\n",
                      fs);
        ret = -1;
        goto out;
    }

    blocks = g_build_filename (deleted_store, "blocks", ((void*)0));
    if (checkdir_with_mkdir (blocks) < 0) {
        seaf_warning ("Directory %s does not exist and is unable to create\n",
                      blocks);
        ret = -1;
        goto out;
    }

out:
    g_free (commits);
    g_free (fs);
    g_free (blocks);
    return ret;
}
