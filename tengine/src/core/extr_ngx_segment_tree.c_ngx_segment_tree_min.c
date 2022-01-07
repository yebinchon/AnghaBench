
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; } ;
typedef TYPE_1__ ngx_segment_node_t ;
typedef scalar_t__ ngx_int_t ;



__attribute__((used)) static ngx_int_t
ngx_segment_tree_min(ngx_segment_node_t *one, ngx_segment_node_t *two)
{
    return two->key - one->key;
}
