
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {int namelen; int name; } ;
struct cache_tree {int subtree_nr; struct cache_tree_sub** down; } ;


 int subtree_name_cmp (char const*,int,int ,int ) ;

__attribute__((used)) static int subtree_pos(struct cache_tree *it, const char *path, int pathlen)
{
    struct cache_tree_sub **down = it->down;
    int lo, hi;
    lo = 0;
    hi = it->subtree_nr;
    while (lo < hi) {
        int mi = (lo + hi) / 2;
        struct cache_tree_sub *mdl = down[mi];
        int cmp = subtree_name_cmp(path, pathlen,
                                   mdl->name, mdl->namelen);
        if (!cmp)
            return mi;
        if (cmp < 0)
            hi = mi;
        else
            lo = mi + 1;
    }
    return -lo-1;
}
