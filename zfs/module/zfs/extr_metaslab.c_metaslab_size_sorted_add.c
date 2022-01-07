
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mssa_arg {int * mra; int * rt; } ;
typedef int range_tree_t ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ range_seg_max_t ;
typedef int metaslab_rt_arg_t ;


 int metaslab_rt_add (int *,TYPE_1__*,int *) ;
 int rs_set_end (TYPE_1__*,int *,scalar_t__) ;
 int rs_set_start (TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static void
metaslab_size_sorted_add(void *arg, uint64_t start, uint64_t size)
{
 struct mssa_arg *mssap = arg;
 range_tree_t *rt = mssap->rt;
 metaslab_rt_arg_t *mrap = mssap->mra;
 range_seg_max_t seg = {0};
 rs_set_start(&seg, rt, start);
 rs_set_end(&seg, rt, start + size);
 metaslab_rt_add(rt, &seg, mrap);
}
