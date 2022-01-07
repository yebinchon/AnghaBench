
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_3__* root; scalar_t__ size; int * start; int * free; int * pool; } ;
typedef TYPE_1__ ngx_radix_tree_t ;
typedef int ngx_radix_node_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int value; int * parent; int * left; int * right; } ;


 scalar_t__ NGX_OK ;
 int NGX_RADIX_NO_VALUE ;
 int ngx_pagesize ;
 TYPE_1__* ngx_palloc (int *,int) ;
 scalar_t__ ngx_radix32tree_insert (TYPE_1__*,int,int,int ) ;
 TYPE_3__* ngx_radix_alloc (TYPE_1__*) ;

ngx_radix_tree_t *
ngx_radix_tree_create(ngx_pool_t *pool, ngx_int_t preallocate)
{
    uint32_t key, mask, inc;
    ngx_radix_tree_t *tree;

    tree = ngx_palloc(pool, sizeof(ngx_radix_tree_t));
    if (tree == ((void*)0)) {
        return ((void*)0);
    }

    tree->pool = pool;
    tree->free = ((void*)0);
    tree->start = ((void*)0);
    tree->size = 0;

    tree->root = ngx_radix_alloc(tree);
    if (tree->root == ((void*)0)) {
        return ((void*)0);
    }

    tree->root->right = ((void*)0);
    tree->root->left = ((void*)0);
    tree->root->parent = ((void*)0);
    tree->root->value = NGX_RADIX_NO_VALUE;

    if (preallocate == 0) {
        return tree;
    }
    if (preallocate == -1) {
        switch (ngx_pagesize / sizeof(ngx_radix_node_t)) {


        case 128:
            preallocate = 6;
            break;


        case 256:
            preallocate = 7;
            break;


        default:
            preallocate = 8;
        }
    }

    mask = 0;
    inc = 0x80000000;

    while (preallocate--) {

        key = 0;
        mask >>= 1;
        mask |= 0x80000000;

        do {
            if (ngx_radix32tree_insert(tree, key, mask, NGX_RADIX_NO_VALUE)
                != NGX_OK)
            {
                return ((void*)0);
            }

            key += inc;

        } while (key);

        inc >>= 1;
    }

    return tree;
}
