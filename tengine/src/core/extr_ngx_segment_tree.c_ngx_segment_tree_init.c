
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_4__ {int num; int extreme; TYPE_3__* segments; int del; int query; int insert; int build; int cmp; int * pool; } ;
typedef TYPE_1__ ngx_segment_tree_t ;
typedef int ngx_segment_node_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int key; } ;


 int NGX_ERROR ;
 int NGX_MAX_UINT32_VALUE ;
 int NGX_OK ;
 TYPE_3__* ngx_pcalloc (int *,int) ;
 int ngx_segment_tree_build ;
 int ngx_segment_tree_delete ;
 int ngx_segment_tree_insert ;
 int ngx_segment_tree_min ;
 int ngx_segment_tree_query ;

ngx_int_t
ngx_segment_tree_init(ngx_segment_tree_t *tree, ngx_uint_t num,
    ngx_pool_t *pool)
{
    tree->segments = ngx_pcalloc(pool,
                                ((num + 1) << 2) * sizeof(ngx_segment_node_t));
    if (tree->segments == ((void*)0)) {
        return NGX_ERROR;
    }

    tree->extreme = NGX_MAX_UINT32_VALUE;
    tree->pool = pool;
    tree->num = num;

    tree->cmp = ngx_segment_tree_min;
    tree->build = ngx_segment_tree_build;
    tree->insert = ngx_segment_tree_insert;
    tree->query = ngx_segment_tree_query;
    tree->del = ngx_segment_tree_delete;

    tree->segments[0].key = tree->extreme;
    return NGX_OK;
}
