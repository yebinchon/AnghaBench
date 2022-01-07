
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int opt ;
typedef int gboolean ;
typedef int data ;
struct TYPE_5__ {int version; struct TYPE_5__* data; int dir_cb; int file_cb; int store_id; int fold_dir_diff; int ** results; } ;
typedef int GList ;
typedef TYPE_1__ DiffOptions ;
typedef TYPE_1__ DiffData ;


 int diff_resolve_renames (int **) ;
 int diff_trees (int,char const**,TYPE_1__*) ;
 int g_return_val_if_fail (int ,int) ;
 int memcpy (int ,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int threeway_diff_dirs ;
 int threeway_diff_files ;

int
diff_merge_roots (const char *store_id, int version,
                  const char *merged_root, const char *p1_root, const char *p2_root,
                  GList **results, gboolean fold_dir_diff)
{
    DiffOptions opt;
    const char *roots[3];

    g_return_val_if_fail (*results == ((void*)0), -1);

    DiffData data;
    memset (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    memset (&opt, 0, sizeof(opt));
    memcpy (opt.store_id, store_id, 36);
    opt.version = version;
    opt.file_cb = threeway_diff_files;
    opt.dir_cb = threeway_diff_dirs;
    opt.data = &data;

    roots[0] = merged_root;
    roots[1] = p1_root;
    roots[2] = p2_root;

    diff_trees (3, roots, &opt);
    diff_resolve_renames (results);

    return 0;
}
