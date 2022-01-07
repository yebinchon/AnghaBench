
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int repo_mgr; int seaf_dir; } ;
struct TYPE_4__ {int message; } ;
typedef TYPE_1__ GError ;
typedef int GDir ;


 char* g_build_filename (int ,char*,char const*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char*,int ,TYPE_1__**) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 int is_repo_store_in_use (char const*) ;
 TYPE_2__* seaf ;
 int seaf_message (char*,char const*,char const*) ;
 int seaf_repo_manager_move_repo_store (int ,char const*,char const*) ;
 int seaf_warning (char*,char*,int ) ;

__attribute__((used)) static void
cleanup_unused_repo_stores (const char *type)
{
    char *top_store_dir;
    const char *repo_id;

    top_store_dir = g_build_filename (seaf->seaf_dir, "storage", type, ((void*)0));

    GError *error = ((void*)0);
    GDir *dir = g_dir_open (top_store_dir, 0, &error);
    if (!dir) {
        seaf_warning ("Failed to open store dir %s: %s.\n",
                      top_store_dir, error->message);
        g_free (top_store_dir);
        return;
    }

    while ((repo_id = g_dir_read_name(dir)) != ((void*)0)) {
        if (!is_repo_store_in_use (repo_id)) {
            seaf_message ("Moving %s for deleted repo %s.\n", type, repo_id);
            seaf_repo_manager_move_repo_store (seaf->repo_mgr, type, repo_id);
        }
    }

    g_free (top_store_dir);
    g_dir_close (dir);
}
