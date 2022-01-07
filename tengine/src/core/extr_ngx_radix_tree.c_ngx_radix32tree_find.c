
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_2__* root; } ;
typedef TYPE_1__ ngx_radix_tree_t ;
struct TYPE_5__ {uintptr_t value; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_2__ ngx_radix_node_t ;


 uintptr_t NGX_RADIX_NO_VALUE ;

uintptr_t
ngx_radix32tree_find(ngx_radix_tree_t *tree, uint32_t key)
{
    uint32_t bit;
    uintptr_t value;
    ngx_radix_node_t *node;

    bit = 0x80000000;
    value = NGX_RADIX_NO_VALUE;
    node = tree->root;

    while (node) {
        if (node->value != NGX_RADIX_NO_VALUE) {
            value = node->value;
        }

        if (key & bit) {
            node = node->right;

        } else {
            node = node->left;
        }

        bit >>= 1;
    }

    return value;
}
