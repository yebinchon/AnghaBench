
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct TYPE_2__ {int sec; } ;
struct cache_entry {int ce_flags; TYPE_1__ ce_mtime; int ce_mode; int sha1; int name; } ;
typedef int gboolean ;
typedef int ChangeSet ;


 int CE_ADDED ;
 int FALSE ;
 int TRUE ;
 int changeset_check_path (int *,int ,int ,int ,int ) ;
 int seaf_message (char*,int ) ;

__attribute__((used)) static gboolean
compare_index_changeset (struct index_state *istate, ChangeSet *changeset)
{
    struct cache_entry *ce;
    int i;
    gboolean ret = TRUE;

    for (i = 0; i < istate->cache_nr; ++i) {
        ce = istate->cache[i];

        if (!(ce->ce_flags & CE_ADDED))
            continue;

        seaf_message ("checking %s in changeset.\n", ce->name);

        if (!changeset_check_path (changeset, ce->name,
                                   ce->sha1, ce->ce_mode, ce->ce_mtime.sec))
            ret = FALSE;
    }

    return ret;
}
