
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {int cache_tree; scalar_t__ used; } ;
struct cache_tree {int subtree_nr; struct cache_tree_sub** down; } ;


 int cache_tree_free (int *) ;
 int free (struct cache_tree_sub*) ;

__attribute__((used)) static void discard_unused_subtrees(struct cache_tree *it)
{
    struct cache_tree_sub **down = it->down;
    int nr = it->subtree_nr;
    int dst, src;
    for (dst = src = 0; src < nr; src++) {
        struct cache_tree_sub *s = down[src];
        if (s->used)
            down[dst++] = s;
        else {
            cache_tree_free(&s->cache_tree);
            free(s);
            it->subtree_nr--;
        }
    }
}
