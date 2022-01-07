
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ key; struct TYPE_12__* right; struct TYPE_12__* left; int color; } ;
typedef TYPE_4__ ngx_rbtree_node_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int len; int data; } ;
struct TYPE_13__ {scalar_t__ hash; TYPE_3__ key; TYPE_2__* conf; } ;
typedef TYPE_5__ ngx_http_upstream_keepalive_peer_data_t ;
struct TYPE_14__ {int len; int data; } ;
typedef TYPE_6__ ngx_http_upstream_keepalive_node_t ;
struct TYPE_10__ {TYPE_1__* index; } ;
struct TYPE_9__ {TYPE_4__* sentinel; TYPE_4__* root; } ;


 scalar_t__ ngx_memn2cmp (int ,int ,int ,int ) ;

__attribute__((used)) static ngx_http_upstream_keepalive_node_t *
ngx_http_upstream_keepalive_lookup(ngx_http_upstream_keepalive_peer_data_t *kp)
{
    ngx_int_t rc;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_http_upstream_keepalive_node_t *ukn;

    node = kp->conf->index->root;
    sentinel = kp->conf->index->sentinel;

    while (node != sentinel) {

        if (kp->hash < node->key) {
            node = node->left;
            continue;
        }

        if (kp->hash > node->key) {
            node = node->right;
            continue;
        }



        ukn = (ngx_http_upstream_keepalive_node_t *) &node->color;

        rc = ngx_memn2cmp(kp->key.data, ukn->data, kp->key.len, ukn->len);

        if (rc == 0) {
            return ukn;
        }

        node = (rc < 0) ? node->left : node->right;
    }

    return ((void*)0);
}
