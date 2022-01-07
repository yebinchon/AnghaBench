
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_name; int name; } ;
typedef int GHashTable ;
typedef TYPE_1__ DiffEntry ;


 char* build_checkout_path (char const*,int ,int ) ;
 int errno ;
 char* g_build_filename (char const*,int ,int *) ;
 int g_free (char*) ;
 scalar_t__ seaf_util_exists (char*) ;
 scalar_t__ seaf_util_rename (char*,char*) ;
 int seaf_warning (char*,char*,char*,int ) ;
 int strerror (int ) ;
 int strlen (int ) ;

__attribute__((used)) static int
do_rename_in_worktree (DiffEntry *de, const char *worktree,
                       GHashTable *conflict_hash, GHashTable *no_conflict_hash)
{
    char *old_path, *new_path;
    int ret = 0;

    old_path = g_build_filename (worktree, de->name, ((void*)0));

    if (seaf_util_exists (old_path)) {
        new_path = build_checkout_path (worktree, de->new_name, strlen(de->new_name));
        if (!new_path) {
            ret = -1;
            goto out;
        }

        if (seaf_util_rename (old_path, new_path) < 0) {
            seaf_warning ("Failed to rename %s to %s: %s.\n",
                          old_path, new_path, strerror(errno));
            ret = -1;
        }

        g_free (new_path);
    }

out:
    g_free (old_path);
    return ret;
}
