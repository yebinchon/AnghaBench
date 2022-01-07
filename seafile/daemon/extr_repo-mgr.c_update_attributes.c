
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct index_state {int cache_changed; } ;
struct TYPE_7__ {scalar_t__ sec; } ;
struct cache_entry {unsigned int ce_mode; int sha1; TYPE_1__ ce_mtime; } ;
struct TYPE_9__ {int email; int * changeset; } ;
struct TYPE_8__ {scalar_t__ st_mtime; int st_mode; } ;
typedef TYPE_2__ SeafStat ;
typedef TYPE_3__ SeafRepo ;
typedef int ChangeSet ;


 int DIFF_STATUS_MODIFIED ;
 int add_to_changeset (int *,int ,int ,TYPE_2__*,int ,char const*,int *) ;
 unsigned int create_ce_mode (int ) ;
 int errno ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_free (char*) ;
 struct cache_entry* index_name_exists (struct index_state*,char const*,int ,int ) ;
 scalar_t__ seaf_stat (char*,TYPE_2__*) ;
 int seaf_warning (char*,char*,int ) ;
 int strerror (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
update_attributes (SeafRepo *repo,
                   struct index_state *istate,
                   const char *worktree,
                   const char *path)
{
    ChangeSet *changeset = repo->changeset;
    char *full_path;
    struct cache_entry *ce;
    SeafStat st;

    ce = index_name_exists (istate, path, strlen(path), 0);
    if (!ce)
        return;

    full_path = g_build_filename (worktree, path, ((void*)0));
    if (seaf_stat (full_path, &st) < 0) {
        seaf_warning ("Failed to stat %s: %s.\n", full_path, strerror(errno));
        g_free (full_path);
        return;
    }

    unsigned int new_mode = create_ce_mode (st.st_mode);
    if (new_mode != ce->ce_mode || st.st_mtime != ce->ce_mtime.sec) {
        ce->ce_mode = new_mode;
        ce->ce_mtime.sec = st.st_mtime;
        istate->cache_changed = 1;
        add_to_changeset (changeset,
                          DIFF_STATUS_MODIFIED,
                          ce->sha1,
                          &st,
                          repo->email,
                          path,
                          ((void*)0));
    }
    g_free (full_path);
}
