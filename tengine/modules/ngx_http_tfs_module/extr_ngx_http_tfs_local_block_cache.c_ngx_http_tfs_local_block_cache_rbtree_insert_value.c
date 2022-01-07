
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ key; struct TYPE_7__* right; struct TYPE_7__* left; struct TYPE_7__* parent; int color; } ;
typedef TYPE_1__ ngx_rbtree_node_t ;
struct TYPE_8__ {int key; } ;
typedef TYPE_2__ ngx_http_tfs_block_cache_node_t ;


 scalar_t__ ngx_http_tfs_block_cache_cmp (int *,int *) ;
 int ngx_rbt_red (TYPE_1__*) ;

void
ngx_http_tfs_local_block_cache_rbtree_insert_value(ngx_rbtree_node_t *temp,
    ngx_rbtree_node_t *node, ngx_rbtree_node_t *sentinel)
{
    ngx_rbtree_node_t **p;
    ngx_http_tfs_block_cache_node_t *tbn, *tbnt;

    for ( ;; ) {

        if (node->key < temp->key) {
            p = &temp->left;

        } else if (node->key > temp->key) {
            p = &temp->right;

        } else {

            tbn = (ngx_http_tfs_block_cache_node_t *) &node->color;
            tbnt = (ngx_http_tfs_block_cache_node_t *) &temp->color;

            p = (ngx_http_tfs_block_cache_cmp(&tbn->key, &tbnt->key) < 0)
                 ? &temp->left : &temp->right;
        }

        if (*p == sentinel) {
            break;
        }

        temp = *p;
    }

    *p = node;
    node->parent = temp;
    node->left = sentinel;
    node->right = sentinel;
    ngx_rbt_red(node);
}
