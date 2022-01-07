
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pd_types; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef int zfs_type_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 int zprop_get_numprops (int) ;
 TYPE_1__* zprop_get_proptable (int) ;

boolean_t
zprop_valid_for_type(int prop, zfs_type_t type, boolean_t headcheck)
{
 zprop_desc_t *prop_tbl;

 if (prop == ZPROP_INVAL || prop == ZPROP_CONT)
  return (B_FALSE);

 ASSERT(prop < zprop_get_numprops(type));
 prop_tbl = zprop_get_proptable(type);
 if (headcheck && prop_tbl[prop].pd_types == ZFS_TYPE_SNAPSHOT)
  return (B_TRUE);
 return ((prop_tbl[prop].pd_types & type) != 0);
}
