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
struct cache_tree_sub {int namelen; scalar_t__* name; int /*<<< orphan*/ * cache_tree; } ;
struct cache_tree {int subtree_alloc; int subtree_nr; struct cache_tree_sub** down; } ;
typedef  int /*<<< orphan*/  down ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct cache_tree_sub* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_tree_sub**,struct cache_tree_sub**,int) ; 
 struct cache_tree_sub** FUNC4 (struct cache_tree_sub**,int) ; 
 int FUNC5 (struct cache_tree*,char const*,int) ; 

__attribute__((used)) static struct cache_tree_sub *FUNC6(struct cache_tree *it,
                                           const char *path,
                                           int pathlen,
                                           int create)
{
    struct cache_tree_sub *down;
    int pos = FUNC5(it, path, pathlen);
    if (0 <= pos)
        return it->down[pos];
    if (!create)
        return NULL;

    pos = -pos-1;
    if (it->subtree_alloc <= it->subtree_nr) {
        it->subtree_alloc = FUNC0(it->subtree_alloc);
        it->down = FUNC4(it->down, it->subtree_alloc *
                           sizeof(*it->down));
    }
    it->subtree_nr++;

    down = FUNC1(sizeof(*down) + pathlen + 1);
    down->cache_tree = NULL;
    down->namelen = pathlen;
    FUNC2(down->name, path, pathlen);
    down->name[pathlen] = 0;

    if (pos < it->subtree_nr)
        FUNC3(it->down + pos + 1,
                it->down + pos,
                sizeof(down) * (it->subtree_nr - pos - 1));
    it->down[pos] = down;
    return down;
}