
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_13__ {int rt_space; int rt_arg; TYPE_1__* rt_ops; } ;
typedef TYPE_2__ range_tree_t ;
typedef int range_seg_t ;
typedef scalar_t__ int64_t ;
struct TYPE_12__ {int (* rtop_add ) (TYPE_2__*,int *,int ) ;int (* rtop_remove ) (TYPE_2__*,int *,int ) ;} ;


 int range_tree_stat_decr (TYPE_2__*,int *) ;
 int range_tree_stat_incr (TYPE_2__*,int *) ;
 scalar_t__ rs_get_end (int *,TYPE_2__*) ;
 scalar_t__ rs_get_start (int *,TYPE_2__*) ;
 int rs_set_end (int *,TYPE_2__*,scalar_t__) ;
 int rs_set_start (int *,TYPE_2__*,scalar_t__) ;
 int stub1 (TYPE_2__*,int *,int ) ;
 int stub2 (TYPE_2__*,int *,int ) ;

void
range_tree_resize_segment(range_tree_t *rt, range_seg_t *rs,
    uint64_t newstart, uint64_t newsize)
{
 int64_t delta = newsize - (rs_get_end(rs, rt) - rs_get_start(rs, rt));

 range_tree_stat_decr(rt, rs);
 if (rt->rt_ops != ((void*)0) && rt->rt_ops->rtop_remove != ((void*)0))
  rt->rt_ops->rtop_remove(rt, rs, rt->rt_arg);

 rs_set_start(rs, rt, newstart);
 rs_set_end(rs, rt, newstart + newsize);

 range_tree_stat_incr(rt, rs);
 if (rt->rt_ops != ((void*)0) && rt->rt_ops->rtop_add != ((void*)0))
  rt->rt_ops->rtop_add(rt, rs, rt->rt_arg);

 rt->rt_space += delta;
}
