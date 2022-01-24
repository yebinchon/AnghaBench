#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_tree_sub {int used; struct cache_tree* cache_tree; } ;
struct cache_tree {int entry_count; int subtree_nr; TYPE_1__** down; } ;
struct cache_entry {char* name; } ;
struct TYPE_2__ {scalar_t__ used; } ;
typedef  scalar_t__ (* CommitCB ) (char const*,int,char const*,struct cache_tree*,struct cache_entry**,int,char const*,int) ;

/* Variables and functions */
 struct cache_tree* FUNC0 () ; 
 int FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_tree*) ; 
 struct cache_tree_sub* FUNC3 (struct cache_tree*,char const*,int,int) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(const char *repo_id,
                      int version,
                      const char *worktree,
                      struct cache_tree *it,
                      struct cache_entry **cache,
                      int entries,
                      const char *base,
                      int baselen,
                      int missing_ok,
                      int dryrun,
                      CommitCB commit_cb)
{
    int i;

    if (0 <= it->entry_count)
        return it->entry_count;

    /*
     * We first scan for subtrees and update them; we start by
     * marking existing subtrees -- the ones that are unmarked
     * should not be in the result.
     */
    for (i = 0; i < it->subtree_nr; i++)
        it->down[i]->used = 0;

    /*
     * Find the subtrees and update them.
     */
    for (i = 0; i < entries; i++) {
        struct cache_entry *ce = cache[i];
        struct cache_tree_sub *sub;
        const char *path, *slash;
        int pathlen, sublen, subcnt;

        path = ce->name;
        pathlen = FUNC1(ce);
        if (pathlen <= baselen || FUNC4(base, path, baselen))
            break; /* at the end of this level */

        slash = FUNC6(path + baselen, '/');
        if (!slash)
            continue;
        /*
         * a/bbb/c (base = a/, slash = /c)
         * ==>
         * path+baselen = bbb/c, sublen = 3
         */
        sublen = slash - (path + baselen);
        sub = FUNC3(it, path + baselen, sublen, 1);
        if (!sub->cache_tree)
            sub->cache_tree = FUNC0();
        subcnt = FUNC7(repo_id, version,
                            worktree,
                            sub->cache_tree,
                            cache + i, entries - i,
                            path,
                            baselen + sublen + 1,
                            missing_ok,
                            dryrun,
                            commit_cb);
        if (subcnt < 0)
            return subcnt;
        i += subcnt - 1;
        sub->used = 1;
    }
    it->entry_count = i;

    FUNC2(it);

    if (commit_cb (repo_id, version, worktree,
                   it, cache, entries, base, baselen) < 0) {
        FUNC5 ("save seafile dirent failed");
        return -1;
    }

    return i;
}