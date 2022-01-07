
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {int dummy; } ;
struct cache_tree {int dummy; } ;


 struct cache_tree_sub* find_subtree (struct cache_tree*,char const*,int,int) ;

struct cache_tree_sub *cache_tree_find_subtree(struct cache_tree *it,
                                               const char *path, int pathlen, int create)
{
    return find_subtree(it, path, pathlen, create);
}
