
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_trie_node_t ;
typedef int ngx_pool_t ;


 int * ngx_pcalloc (int *,int) ;

ngx_trie_node_t *
ngx_trie_node_create(ngx_pool_t *pool)
{
    ngx_trie_node_t *node;

    node = ngx_pcalloc(pool, sizeof(ngx_trie_node_t));
    if (node == ((void*)0)) {
        return ((void*)0);
    }

    return node;
}
