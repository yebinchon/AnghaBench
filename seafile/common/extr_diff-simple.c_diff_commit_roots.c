
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
 int memcpy (int ,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int twoway_diff_dirs ;
 int twoway_diff_files ;

int
diff_commit_roots (const char *store_id, int version,
                   const char *root1, const char *root2, GList **results,
                   gboolean fold_dir_diff)
{
    DiffOptions opt;
    const char *roots[2];

    DiffData data;
    memset (&data, 0, sizeof(data));
    data.results = results;
    data.fold_dir_diff = fold_dir_diff;

    memset (&opt, 0, sizeof(opt));
    memcpy (opt.store_id, store_id, 36);
    opt.version = version;
    opt.file_cb = twoway_diff_files;
    opt.dir_cb = twoway_diff_dirs;
    opt.data = &data;

    roots[0] = root1;
    roots[1] = root2;

    diff_trees (2, roots, &opt);
    diff_resolve_renames (results);

    return 0;
}
