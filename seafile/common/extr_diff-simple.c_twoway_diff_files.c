
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** results; } ;
typedef int SeafDirent ;
typedef int GList ;
typedef int DiffEntry ;
typedef TYPE_1__ DiffData ;


 int DIFF_STATUS_ADDED ;
 int DIFF_STATUS_DELETED ;
 int DIFF_STATUS_MODIFIED ;
 int DIFF_TYPE_COMMITS ;
 int * diff_entry_new_from_dirent (int ,int ,int *,char const*) ;
 int dirent_same (int *,int *) ;
 int * g_list_prepend (int *,int *) ;

__attribute__((used)) static int
twoway_diff_files (int n, const char *basedir, SeafDirent *files[], void *vdata)
{
    DiffData *data = vdata;
    GList **results = data->results;
    DiffEntry *de;
    SeafDirent *tree1 = files[0];
    SeafDirent *tree2 = files[1];

    if (!tree1) {
        de = diff_entry_new_from_dirent (DIFF_TYPE_COMMITS, DIFF_STATUS_ADDED,
                                         tree2, basedir);
        *results = g_list_prepend (*results, de);
        return 0;
    }

    if (!tree2) {
        de = diff_entry_new_from_dirent (DIFF_TYPE_COMMITS, DIFF_STATUS_DELETED,
                                         tree1, basedir);
        *results = g_list_prepend (*results, de);
        return 0;
    }

    if (!dirent_same (tree1, tree2)) {
        de = diff_entry_new_from_dirent (DIFF_TYPE_COMMITS, DIFF_STATUS_MODIFIED,
                                         tree2, basedir);
        *results = g_list_prepend (*results, de);
    }

    return 0;
}
