
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_9__ {TYPE_3__* sentinel; TYPE_3__* root; } ;
typedef TYPE_2__ ngx_rbtree_t ;
struct TYPE_10__ {scalar_t__ key; struct TYPE_10__* right; struct TYPE_10__* left; int color; } ;
typedef TYPE_3__ ngx_rbtree_node_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
typedef TYPE_4__ ngx_http_limit_conn_node_t ;


 scalar_t__ ngx_memn2cmp (int ,int ,int ,size_t) ;

__attribute__((used)) static ngx_rbtree_node_t *
ngx_http_limit_conn_lookup(ngx_rbtree_t *rbtree, ngx_str_t *key, uint32_t hash)
{
    ngx_int_t rc;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_http_limit_conn_node_t *lcn;

    node = rbtree->root;
    sentinel = rbtree->sentinel;

    while (node != sentinel) {

        if (hash < node->key) {
            node = node->left;
            continue;
        }

        if (hash > node->key) {
            node = node->right;
            continue;
        }



        lcn = (ngx_http_limit_conn_node_t *) &node->color;

        rc = ngx_memn2cmp(key->data, lcn->data, key->len, (size_t) lcn->len);

        if (rc == 0) {
            return node;
        }

        node = (rc < 0) ? node->left : node->right;
    }

    return ((void*)0);
}
