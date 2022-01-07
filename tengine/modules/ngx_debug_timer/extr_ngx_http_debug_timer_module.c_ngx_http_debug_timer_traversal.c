
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ ngx_rbtree_node_t ;
typedef int ngx_array_t ;
struct TYPE_6__ {TYPE_1__* sentinel; } ;


 TYPE_1__** ngx_array_push (int *) ;
 TYPE_3__ ngx_event_timer_rbtree ;

__attribute__((used)) static void
ngx_http_debug_timer_traversal(ngx_array_t *array, ngx_rbtree_node_t *root)
{
    ngx_rbtree_node_t **node;

    if (array != ((void*)0) && root != ((void*)0)
        && root != ngx_event_timer_rbtree.sentinel)
    {
        ngx_http_debug_timer_traversal(array, root->left);
        node = ngx_array_push(array);
        if (node == ((void*)0)) {
            return;
        }
        *node = (ngx_rbtree_node_t *) root;
        ngx_http_debug_timer_traversal(array, root->right);
    }
}
