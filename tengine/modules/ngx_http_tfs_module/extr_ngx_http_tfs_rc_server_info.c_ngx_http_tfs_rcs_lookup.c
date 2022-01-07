
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_14__ {int len; int data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_15__ {scalar_t__ key; struct TYPE_15__* right; struct TYPE_15__* left; int color; } ;
typedef TYPE_5__ ngx_rbtree_node_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {int len; int data; } ;
struct TYPE_16__ {int queue; TYPE_2__ appkey; } ;
typedef TYPE_6__ ngx_http_tfs_rcs_info_t ;
struct TYPE_17__ {TYPE_3__* sh; } ;
typedef TYPE_7__ ngx_http_tfs_rc_ctx_t ;
struct TYPE_11__ {TYPE_5__* sentinel; TYPE_5__* root; } ;
struct TYPE_13__ {int queue; TYPE_1__ rbtree; } ;


 scalar_t__ ngx_memn2cmp (int ,int ,int ,int ) ;
 scalar_t__ ngx_murmur_hash2 (int ,int ) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;

ngx_http_tfs_rcs_info_t *
ngx_http_tfs_rcs_lookup(ngx_http_tfs_rc_ctx_t *ctx,
    ngx_str_t appkey)
{
    ngx_int_t rc;
    ngx_uint_t hash;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_http_tfs_rcs_info_t *tr;

    node = ctx->sh->rbtree.root;
    sentinel = ctx->sh->rbtree.sentinel;

    hash = ngx_murmur_hash2(appkey.data, appkey.len);

    while (node != sentinel) {

        if (hash < node->key) {
            node = node->left;
            continue;
        }

        if (hash > node->key) {
            node = node->right;
            continue;
        }



        tr = (ngx_http_tfs_rcs_info_t *) &node->color;
        rc = ngx_memn2cmp(appkey.data, tr->appkey.data, appkey.len,
                          tr->appkey.len);

        if (rc == 0) {
            ngx_queue_remove(&tr->queue);
            ngx_queue_insert_head(&ctx->sh->queue, &tr->queue);

            return tr;
        }

        node = (rc < 0) ? node->left : node->right;
     }

    return ((void*)0);
}
