
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {int namelen; scalar_t__* name; int * cache_tree; } ;
struct cache_tree {int subtree_alloc; int subtree_nr; struct cache_tree_sub** down; } ;
typedef int down ;


 int alloc_nr (int) ;
 struct cache_tree_sub* malloc (int) ;
 int memcpy (scalar_t__*,char const*,int) ;
 int memmove (struct cache_tree_sub**,struct cache_tree_sub**,int) ;
 struct cache_tree_sub** realloc (struct cache_tree_sub**,int) ;
 int subtree_pos (struct cache_tree*,char const*,int) ;

__attribute__((used)) static struct cache_tree_sub *find_subtree(struct cache_tree *it,
                                           const char *path,
                                           int pathlen,
                                           int create)
{
    struct cache_tree_sub *down;
    int pos = subtree_pos(it, path, pathlen);
    if (0 <= pos)
        return it->down[pos];
    if (!create)
        return ((void*)0);

    pos = -pos-1;
    if (it->subtree_alloc <= it->subtree_nr) {
        it->subtree_alloc = alloc_nr(it->subtree_alloc);
        it->down = realloc(it->down, it->subtree_alloc *
                           sizeof(*it->down));
    }
    it->subtree_nr++;

    down = malloc(sizeof(*down) + pathlen + 1);
    down->cache_tree = ((void*)0);
    down->namelen = pathlen;
    memcpy(down->name, path, pathlen);
    down->name[pathlen] = 0;

    if (pos < it->subtree_nr)
        memmove(it->down + pos + 1,
                it->down + pos,
                sizeof(down) * (it->subtree_nr - pos - 1));
    it->down[pos] = down;
    return down;
}
