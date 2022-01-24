#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cache_tree {int dummy; } ;
struct cache_entry {int dummy; } ;
typedef  int /*<<< orphan*/  CommitCB ;

/* Variables and functions */
 int FUNC0 (char const*,int,char const*,struct cache_tree*,struct cache_entry**,int,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cache_entry**,int) ; 

int FUNC2(const char *repo_id,
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
    i = FUNC1(cache, entries);
    if (i)
        return i;
    i = FUNC0(repo_id, repo_version, worktree,
                   it, cache, entries, "", 0, missing_ok, dryrun, commit_cb);
    if (i < 0)
        return i;
    return 0;
}