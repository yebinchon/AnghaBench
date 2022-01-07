
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int sm_size; int sm_start; } ;
typedef TYPE_1__ space_map_t ;
struct TYPE_7__ {scalar_t__ smla_type; TYPE_1__* smla_sm; int * smla_rt; } ;
typedef TYPE_2__ space_map_load_arg_t ;
typedef int range_tree_t ;
typedef scalar_t__ maptype_t ;


 scalar_t__ SM_FREE ;
 int VERIFY0 (int ) ;
 int range_tree_add (int *,int ,int ) ;
 int range_tree_space (int *) ;
 int range_tree_vacate (int *,int *,int *) ;
 int space_map_iterate (TYPE_1__*,int ,int ,TYPE_2__*) ;
 int space_map_load_callback ;

int
space_map_load_length(space_map_t *sm, range_tree_t *rt, maptype_t maptype,
    uint64_t length)
{
 space_map_load_arg_t smla;

 VERIFY0(range_tree_space(rt));

 if (maptype == SM_FREE)
  range_tree_add(rt, sm->sm_start, sm->sm_size);

 smla.smla_rt = rt;
 smla.smla_sm = sm;
 smla.smla_type = maptype;
 int err = space_map_iterate(sm, length,
     space_map_load_callback, &smla);

 if (err != 0)
  range_tree_vacate(rt, ((void*)0), ((void*)0));

 return (err);
}
