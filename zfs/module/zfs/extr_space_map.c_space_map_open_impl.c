
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_6__ {TYPE_3__* sm_dbuf; int sm_phys; int sm_blksz; int sm_object; int sm_os; } ;
typedef TYPE_1__ space_map_t ;
struct TYPE_7__ {int db_data; } ;


 int dmu_bonus_hold (int ,int ,TYPE_1__*,TYPE_3__**) ;
 int dmu_object_size_from_db (TYPE_3__*,int *,int *) ;

__attribute__((used)) static int
space_map_open_impl(space_map_t *sm)
{
 int error;
 u_longlong_t blocks;

 error = dmu_bonus_hold(sm->sm_os, sm->sm_object, sm, &sm->sm_dbuf);
 if (error)
  return (error);

 dmu_object_size_from_db(sm->sm_dbuf, &sm->sm_blksz, &blocks);
 sm->sm_phys = sm->sm_dbuf->db_data;
 return (0);
}
