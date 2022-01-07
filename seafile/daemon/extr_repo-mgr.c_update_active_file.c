
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef scalar_t__ gboolean ;
struct TYPE_5__ {int sync_mgr; } ;
struct TYPE_4__ {int id; int is_readonly; } ;
typedef scalar_t__ SyncStatus ;
typedef int SeafStat ;
typedef TYPE_1__ SeafRepo ;


 scalar_t__ SYNC_STATUS_IGNORED ;
 scalar_t__ SYNC_STATUS_SYNCED ;
 scalar_t__ SYNC_STATUS_SYNCING ;
 int S_IFREG ;
 scalar_t__ ie_match_stat (struct cache_entry*,int *,int ) ;
 struct cache_entry* index_name_exists (struct index_state*,char const*,int ,int ) ;
 scalar_t__ is_path_writable (int ,int ,char const*) ;
 TYPE_3__* seaf ;
 int seaf_sync_manager_delete_active_path (int ,int ,char const*) ;
 int seaf_sync_manager_update_active_path (int ,int ,char const*,int ,scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static void
update_active_file (SeafRepo *repo,
                    const char *path,
                    SeafStat *st,
                    struct index_state *istate,
                    gboolean ignored)
{
    if (ignored) {
        seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                              repo->id,
                                              path,
                                              S_IFREG,
                                              SYNC_STATUS_IGNORED);
    } else {
        SyncStatus status;
        gboolean is_writable;

        struct cache_entry *ce = index_name_exists(istate, path, strlen(path), 0);
        if (!ce || ie_match_stat(ce, st, 0) != 0)
            status = SYNC_STATUS_SYNCING;
        else
            status = SYNC_STATUS_SYNCED;

        is_writable = is_path_writable (repo->id, repo->is_readonly, path);

        if (!is_writable && status == SYNC_STATUS_SYNCING)
            seaf_sync_manager_delete_active_path (seaf->sync_mgr,
                                                  repo->id,
                                                  path);
        else
            seaf_sync_manager_update_active_path (seaf->sync_mgr,
                                                  repo->id,
                                                  path,
                                                  S_IFREG,
                                                  status);
    }
}
