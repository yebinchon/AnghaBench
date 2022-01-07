
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int build_clue; int query; int insert; int * pool; int * root; } ;
typedef TYPE_1__ ngx_trie_t ;
typedef int ngx_pool_t ;


 TYPE_1__* ngx_palloc (int *,int) ;
 int ngx_trie_build_clue ;
 int ngx_trie_insert ;
 int * ngx_trie_node_create (int *) ;
 int ngx_trie_query ;

ngx_trie_t *
ngx_trie_create(ngx_pool_t *pool)
{
    ngx_trie_t *trie;

    trie = ngx_palloc(pool, sizeof(ngx_trie_t));
    if (trie == ((void*)0)) {
        return ((void*)0);
    }

    trie->root = ngx_trie_node_create(pool);
    if (trie->root == ((void*)0)) {
        return ((void*)0);
    }

    trie->pool = pool;
    trie->insert = ngx_trie_insert;
    trie->query = ngx_trie_query;
    trie->build_clue = ngx_trie_build_clue;

    return trie;
}
