
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sub_dirs ;
typedef int gboolean ;
typedef int dirs ;
struct TYPE_15__ {int fs_mgr; } ;
struct TYPE_14__ {int (* dir_cb ) (int,char const*,TYPE_1__**,int ,int *) ;int store_id; int version; int data; } ;
struct TYPE_13__ {char* name; int id; int mode; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_1__ SeafDir ;
typedef TYPE_3__ DiffOptions ;


 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int diff_trees_recursive (int,TYPE_1__**,char*,TYPE_3__*) ;
 int g_free (char*) ;
 char* g_strconcat (char const*,char*,char*,int *) ;
 int memset (TYPE_1__**,int ,int) ;
 TYPE_7__* seaf ;
 int seaf_dir_free (TYPE_1__*) ;
 TYPE_1__* seaf_fs_manager_get_seafdir (int ,int ,int ,int ) ;
 int seaf_warning (char*,int ,int ) ;
 int stub1 (int,char const*,TYPE_1__**,int ,int *) ;

__attribute__((used)) static int
diff_directories (int n, SeafDirent *dents[], const char *basedir, DiffOptions *opt)
{
    SeafDirent *dirs[3];
    int i, n_dirs = 0;
    char *dirname = "";
    int ret;
    SeafDir *sub_dirs[3], *dir;

    memset (dirs, 0, sizeof(dirs[0])*n);
    for (i = 0; i < n; ++i) {
        if (dents[i] && S_ISDIR(dents[i]->mode)) {
            dirs[i] = dents[i];
            ++n_dirs;
        }
    }

    if (n_dirs == 0)
        return 0;

    gboolean recurse = TRUE;
    ret = opt->dir_cb (n, basedir, dirs, opt->data, &recurse);
    if (ret < 0)
        return ret;

    if (!recurse)
        return 0;

    memset (sub_dirs, 0, sizeof(sub_dirs[0])*n);
    for (i = 0; i < n; ++i) {
        if (dents[i] != ((void*)0) && S_ISDIR(dents[i]->mode)) {
            dir = seaf_fs_manager_get_seafdir (seaf->fs_mgr,
                                               opt->store_id,
                                               opt->version,
                                               dents[i]->id);
            if (!dir) {
                seaf_warning ("Failed to find dir %s:%s.\n",
                              opt->store_id, dents[i]->id);
                ret = -1;
                goto free_sub_dirs;
            }
            sub_dirs[i] = dir;

            dirname = dents[i]->name;
        }
    }

    char *new_basedir = g_strconcat (basedir, dirname, "/", ((void*)0));

    ret = diff_trees_recursive (n, sub_dirs, new_basedir, opt);

    g_free (new_basedir);

free_sub_dirs:
    for (i = 0; i < n; ++i)
        seaf_dir_free (sub_dirs[i]);
    return ret;
}
