
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_flags; } ;
typedef int SeafStat ;


 unsigned int CE_MATCH_IGNORE_SKIP_WORKTREE ;
 unsigned int CE_MATCH_IGNORE_VALID ;
 int CE_VALID ;
 unsigned int DATA_CHANGED ;
 unsigned int ce_match_stat_basic (struct cache_entry*,int *) ;
 scalar_t__ ce_skip_worktree (struct cache_entry*) ;
 scalar_t__ is_racy_timestamp (int ,struct cache_entry*) ;
 int istate ;

int ie_match_stat(struct cache_entry *ce, SeafStat *st,
                  unsigned int options)
{
    unsigned int changed;
    int ignore_valid = options & CE_MATCH_IGNORE_VALID;
    int ignore_skip_worktree = options & CE_MATCH_IGNORE_SKIP_WORKTREE;
    if (!ignore_skip_worktree && ce_skip_worktree(ce))
        return 0;
    if (!ignore_valid && (ce->ce_flags & CE_VALID))
        return 0;
    changed = ce_match_stat_basic(ce, st);
    return changed;
}
