
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef int CommitCB ;


 int update_one (char const*,int,char const*,struct cache_tree*,struct cache_entry**,int,char*,int ,int,int,int ) ;
 int verify_cache (struct cache_entry**,int) ;

int cache_tree_update(const char *repo_id,
                      int repo_version,
                      const char *worktree,
                      struct cache_tree *it,
                      struct cache_entry **cache,
                      int entries,
                      int missing_ok,
                      int dryrun,
                      CommitCB commit_cb)
{
    int i;
    i = verify_cache(cache, entries);
    if (i)
        return i;
    i = update_one(repo_id, repo_version, worktree,
                   it, cache, entries, "", 0, missing_ok, dryrun, commit_cb);
    if (i < 0)
        return i;
    return 0;
}
