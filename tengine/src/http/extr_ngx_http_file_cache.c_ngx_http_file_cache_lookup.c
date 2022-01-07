
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {scalar_t__ key; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef TYPE_3__ ngx_rbtree_node_t ;
typedef scalar_t__ ngx_rbtree_key_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {TYPE_2__* sh; } ;
typedef TYPE_4__ ngx_http_file_cache_t ;
struct TYPE_12__ {int key; } ;
typedef TYPE_5__ ngx_http_file_cache_node_t ;
struct TYPE_8__ {TYPE_3__* sentinel; TYPE_3__* root; } ;
struct TYPE_9__ {TYPE_1__ rbtree; } ;


 scalar_t__ NGX_HTTP_CACHE_KEY_LEN ;
 scalar_t__ ngx_memcmp (int *,int ,scalar_t__) ;
 int ngx_memcpy (int *,int *,int) ;

__attribute__((used)) static ngx_http_file_cache_node_t *
ngx_http_file_cache_lookup(ngx_http_file_cache_t *cache, u_char *key)
{
    ngx_int_t rc;
    ngx_rbtree_key_t node_key;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_http_file_cache_node_t *fcn;

    ngx_memcpy((u_char *) &node_key, key, sizeof(ngx_rbtree_key_t));

    node = cache->sh->rbtree.root;
    sentinel = cache->sh->rbtree.sentinel;

    while (node != sentinel) {

        if (node_key < node->key) {
            node = node->left;
            continue;
        }

        if (node_key > node->key) {
            node = node->right;
            continue;
        }



        fcn = (ngx_http_file_cache_node_t *) node;

        rc = ngx_memcmp(&key[sizeof(ngx_rbtree_key_t)], fcn->key,
                        NGX_HTTP_CACHE_KEY_LEN - sizeof(ngx_rbtree_key_t));

        if (rc == 0) {
            return fcn;
        }

        node = (rc < 0) ? node->left : node->right;
    }



    return ((void*)0);
}
