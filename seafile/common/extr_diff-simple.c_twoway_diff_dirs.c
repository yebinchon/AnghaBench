
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_6__ {scalar_t__ fold_dir_diff; int ** results; } ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ SeafDirent ;
typedef int GList ;
typedef int DiffEntry ;
typedef TYPE_2__ DiffData ;


 int DIFF_STATUS_DIR_ADDED ;
 int DIFF_STATUS_DIR_DELETED ;
 int DIFF_TYPE_COMMITS ;
 int EMPTY_SHA1 ;
 int FALSE ;
 int TRUE ;
 int * diff_entry_new_from_dirent (int ,int ,TYPE_1__*,char const*) ;
 int * g_list_prepend (int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
twoway_diff_dirs (int n, const char *basedir, SeafDirent *dirs[], void *vdata,
                  gboolean *recurse)
{
    DiffData *data = vdata;
    GList **results = data->results;
    DiffEntry *de;
    SeafDirent *tree1 = dirs[0];
    SeafDirent *tree2 = dirs[1];

    if (!tree1) {
        if (strcmp (tree2->id, EMPTY_SHA1) == 0 || data->fold_dir_diff) {
            de = diff_entry_new_from_dirent (DIFF_TYPE_COMMITS, DIFF_STATUS_DIR_ADDED,
                                             tree2, basedir);
            *results = g_list_prepend (*results, de);
            *recurse = FALSE;
        } else
            *recurse = TRUE;
        return 0;
    }

    if (!tree2) {
        de = diff_entry_new_from_dirent (DIFF_TYPE_COMMITS,
                                         DIFF_STATUS_DIR_DELETED,
                                         tree1, basedir);
        *results = g_list_prepend (*results, de);

        if (data->fold_dir_diff) {
            *recurse = FALSE;
        } else
            *recurse = TRUE;
        return 0;
    }

    return 0;
}
