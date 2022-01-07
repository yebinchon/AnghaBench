
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seaf_dir; } ;
typedef int SeafRepoManager ;


 char* g_build_filename (int ,char*,char const*,char const*,int *) ;
 int g_free (char*) ;
 int g_rename (char*,char*) ;
 char* gen_deleted_store_path (char const*,char const*) ;
 TYPE_1__* seaf ;

void
seaf_repo_manager_move_repo_store (SeafRepoManager *mgr,
                                   const char *type,
                                   const char *repo_id)
{
    char *src = ((void*)0);
    char *dst = ((void*)0);

    src = g_build_filename (seaf->seaf_dir, "storage", type, repo_id, ((void*)0));
    dst = gen_deleted_store_path (type, repo_id);
    if (dst) {
        g_rename (src, dst);
    }
    g_free (src);
    g_free (dst);
}
