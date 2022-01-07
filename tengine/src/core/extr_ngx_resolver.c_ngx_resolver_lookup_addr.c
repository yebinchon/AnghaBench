
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sentinel; TYPE_3__* root; } ;
struct TYPE_7__ {TYPE_1__ addr_rbtree; } ;
typedef TYPE_2__ ngx_resolver_t ;
typedef int ngx_resolver_node_t ;
struct TYPE_8__ {scalar_t__ key; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_3__ ngx_rbtree_node_t ;
typedef scalar_t__ in_addr_t ;


 int * ngx_resolver_node (TYPE_3__*) ;

__attribute__((used)) static ngx_resolver_node_t *
ngx_resolver_lookup_addr(ngx_resolver_t *r, in_addr_t addr)
{
    ngx_rbtree_node_t *node, *sentinel;

    node = r->addr_rbtree.root;
    sentinel = r->addr_rbtree.sentinel;

    while (node != sentinel) {

        if (addr < node->key) {
            node = node->left;
            continue;
        }

        if (addr > node->key) {
            node = node->right;
            continue;
        }



        return ngx_resolver_node(node);
    }



    return ((void*)0);
}
