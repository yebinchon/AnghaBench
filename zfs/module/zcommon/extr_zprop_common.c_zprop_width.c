
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pi_name; } ;
typedef TYPE_1__ zprop_index_t ;
struct TYPE_5__ {int pd_proptype; TYPE_1__* pd_table; int * pd_colname; } ;
typedef TYPE_2__ zprop_desc_t ;
typedef int zfs_type_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;



 int ZFS_PROP_CREATION ;
 int ZPOOL_PROP_HEALTH ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 size_t strlen (int *) ;
 int zprop_get_numprops (int ) ;
 TYPE_2__* zprop_get_proptable (int ) ;

size_t
zprop_width(int prop, boolean_t *fixed, zfs_type_t type)
{
 zprop_desc_t *prop_tbl, *pd;
 const zprop_index_t *idx;
 size_t ret;
 int i;

 ASSERT(prop != ZPROP_INVAL && prop != ZPROP_CONT);
 ASSERT(prop < zprop_get_numprops(type));

 prop_tbl = zprop_get_proptable(type);
 pd = &prop_tbl[prop];

 *fixed = B_TRUE;




 ret = strlen(pd->pd_colname);





 switch (pd->pd_proptype) {
 case 129:




  if (ret < 5)
   ret = 5;




  if (prop == ZFS_PROP_CREATION)
   *fixed = B_FALSE;




  if (prop == ZPOOL_PROP_HEALTH)
   ret = 8;
  break;
 case 130:
  idx = prop_tbl[prop].pd_table;
  for (i = 0; idx[i].pi_name != ((void*)0); i++) {
   if (strlen(idx[i].pi_name) > ret)
    ret = strlen(idx[i].pi_name);
  }
  break;

 case 128:
  *fixed = B_FALSE;
  break;
 }

 return (ret);
}
