
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_11__ {TYPE_5__* sentinel; TYPE_5__* root; } ;
struct TYPE_13__ {TYPE_1__ name_rbtree; } ;
typedef TYPE_3__ ngx_resolver_t ;
struct TYPE_14__ {int nlen; int name; } ;
typedef TYPE_4__ ngx_resolver_node_t ;
struct TYPE_15__ {scalar_t__ key; struct TYPE_15__* right; struct TYPE_15__* left; } ;
typedef TYPE_5__ ngx_rbtree_node_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ ngx_memn2cmp (int ,int ,int ,int ) ;
 TYPE_4__* ngx_resolver_node (TYPE_5__*) ;

__attribute__((used)) static ngx_resolver_node_t *
ngx_resolver_lookup_name(ngx_resolver_t *r, ngx_str_t *name, uint32_t hash)
{
    ngx_int_t rc;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_resolver_node_t *rn;

    node = r->name_rbtree.root;
    sentinel = r->name_rbtree.sentinel;

    while (node != sentinel) {

        if (hash < node->key) {
            node = node->left;
            continue;
        }

        if (hash > node->key) {
            node = node->right;
            continue;
        }



        rn = ngx_resolver_node(node);

        rc = ngx_memn2cmp(name->data, rn->name, name->len, rn->nlen);

        if (rc == 0) {
            return rn;
        }

        node = (rc < 0) ? node->left : node->right;
    }



    return ((void*)0);
}
