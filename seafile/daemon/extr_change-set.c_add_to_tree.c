
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {int fs_mgr; } ;
struct TYPE_21__ {char* repo_id; TYPE_2__* tree_root; } ;
struct TYPE_20__ {int dents_i; int version; int dents; } ;
struct TYPE_19__ {char* name; int mode; TYPE_2__* subdir; int id; } ;
typedef int SeafStat ;
typedef int SeafDir ;
typedef TYPE_1__ ChangeSetDirent ;
typedef TYPE_2__ ChangeSetDir ;
typedef TYPE_3__ ChangeSet ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int add_dent_to_dir (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* create_intermediate_dir (TYPE_2__*,char*) ;
 int create_new_dent (TYPE_2__*,char*,unsigned char*,int *,char const*,TYPE_1__*) ;
 int g_free (char*) ;
 TYPE_1__* g_hash_table_lookup (int ,char*) ;
 char* g_strdup (char*) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int ) ;
 int g_strv_length (char**) ;
 char* g_utf8_strdown (char*,int) ;
 int handle_case_conflict (TYPE_3__*,TYPE_2__*,char*) ;
 int remove_dent_from_dir (TYPE_2__*,char*) ;
 TYPE_6__* seaf ;
 int seaf_dir_free (int *) ;
 TYPE_2__* seaf_dir_to_changeset_dir (int *) ;
 int * seaf_fs_manager_get_seafdir (int ,char*,int ,int ) ;
 int seaf_warning (char*,char*,int ) ;
 int update_file (TYPE_1__*,unsigned char*,int *,char const*) ;

__attribute__((used)) static void
add_to_tree (ChangeSet *changeset,
             unsigned char *sha1,
             SeafStat *st,
             const char *modifier,
             const char *path,
             ChangeSetDirent *new_dent)
{
    char *repo_id = changeset->repo_id;
    ChangeSetDir *root = changeset->tree_root;
    char **parts, *dname;
    int n, i;
    ChangeSetDir *dir;
    ChangeSetDirent *dent;
    SeafDir *seaf_dir;

    parts = g_strsplit (path, "/", 0);
    n = g_strv_length(parts);
    dir = root;
    for (i = 0; i < n; i++) {



        dname = parts[i];
        dent = g_hash_table_lookup (dir->dents, dname);

        if (dent) {
            if (S_ISDIR(dent->mode)) {
                if (i == (n-1))

                    break;

                if (!dent->subdir) {
                    seaf_dir = seaf_fs_manager_get_seafdir(seaf->fs_mgr,
                                                           repo_id,
                                                           root->version,
                                                           dent->id);
                    if (!seaf_dir) {
                        seaf_warning ("Failed to load seafdir %s:%s\n",
                                      repo_id, dent->id);
                        break;
                    }
                    dent->subdir = seaf_dir_to_changeset_dir (seaf_dir);
                    seaf_dir_free (seaf_dir);
                }
                dir = dent->subdir;
            } else if (S_ISREG(dent->mode)) {
                if (i == (n-1)) {

                    update_file (dent, sha1, st, modifier);
                    break;
                }
            }
        } else {
            if (i == (n-1)) {
                create_new_dent (dir, dname, sha1, st, modifier, new_dent);
            } else {
                dir = create_intermediate_dir (dir, dname);
            }
        }
    }

    g_strfreev (parts);
}
