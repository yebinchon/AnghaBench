
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* cmp ) (int *,int *) ;int * segments; } ;
typedef TYPE_1__ ngx_segment_tree_t ;
typedef int ngx_segment_node_t ;
typedef size_t ngx_int_t ;


 int ngx_segment_node_copy (int *,int *) ;
 scalar_t__ stub1 (int *,int *) ;

void
ngx_segment_tree_insert(ngx_segment_tree_t *tree, ngx_int_t index, ngx_int_t l,
    ngx_int_t r, ngx_int_t pos, ngx_segment_node_t *node)
{
    ngx_int_t child, mid;
    if (l == r && l == pos) {
        ngx_segment_node_copy(&tree->segments[index], node);
        return;
    }

    child = index << 1;
    mid = (l + r) >> 1;

    if (pos <= mid) {
        ngx_segment_tree_insert(tree, child, l, mid, pos, node);

    } else {
        ngx_segment_tree_insert(tree, child + 1, mid + 1, r, pos, node);
    }

    if (tree->cmp(&tree->segments[child], &tree->segments[child + 1]) > 0) {
        ngx_segment_node_copy(&tree->segments[index], &tree->segments[child]);

    } else {
        ngx_segment_node_copy(&tree->segments[index],
                              &tree->segments[child + 1]);
    }
}
