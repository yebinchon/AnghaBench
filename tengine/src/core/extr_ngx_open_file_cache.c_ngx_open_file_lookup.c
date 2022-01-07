
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_11__ {scalar_t__ key; struct TYPE_11__* right; struct TYPE_11__* left; } ;
typedef TYPE_3__ ngx_rbtree_node_t ;
struct TYPE_9__ {TYPE_3__* sentinel; TYPE_3__* root; } ;
struct TYPE_12__ {TYPE_1__ rbtree; } ;
typedef TYPE_4__ ngx_open_file_cache_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {int name; } ;
typedef TYPE_5__ ngx_cached_open_file_t ;


 scalar_t__ ngx_strcmp (int ,int ) ;

__attribute__((used)) static ngx_cached_open_file_t *
ngx_open_file_lookup(ngx_open_file_cache_t *cache, ngx_str_t *name,
    uint32_t hash)
{
    ngx_int_t rc;
    ngx_rbtree_node_t *node, *sentinel;
    ngx_cached_open_file_t *file;

    node = cache->rbtree.root;
    sentinel = cache->rbtree.sentinel;

    while (node != sentinel) {

        if (hash < node->key) {
            node = node->left;
            continue;
        }

        if (hash > node->key) {
            node = node->right;
            continue;
        }



        file = (ngx_cached_open_file_t *) node;

        rc = ngx_strcmp(name->data, file->name);

        if (rc == 0) {
            return file;
        }

        node = (rc < 0) ? node->left : node->right;
    }

    return ((void*)0);
}
