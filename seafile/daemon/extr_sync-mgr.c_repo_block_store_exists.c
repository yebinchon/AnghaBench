
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int seaf_dir; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int G_FILE_TEST_IS_DIR ;
 int TRUE ;
 char* g_build_filename (int ,char*,char*,int ,int *) ;
 scalar_t__ g_file_test (char*,int ) ;
 int g_free (char*) ;
 TYPE_2__* seaf ;

__attribute__((used)) static gboolean
repo_block_store_exists (SeafRepo *repo)
{
    gboolean ret;
    char *store_path = g_build_filename (seaf->seaf_dir, "storage", "blocks",
                                         repo->id, ((void*)0));
    if (g_file_test (store_path, G_FILE_TEST_IS_DIR))
        ret = TRUE;
    else
        ret = FALSE;
    g_free (store_path);
    return ret;
}
