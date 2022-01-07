
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* pd_values; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef int zfs_type_t ;


 int ASSERT (int) ;
 int ZPROP_CONT ;
 int ZPROP_INVAL ;
 int zprop_get_numprops (int ) ;
 TYPE_1__* zprop_get_proptable (int ) ;

const char *
zprop_values(int prop, zfs_type_t type)
{
 zprop_desc_t *prop_tbl;

 ASSERT(prop != ZPROP_INVAL && prop != ZPROP_CONT);
 ASSERT(prop < zprop_get_numprops(type));

 prop_tbl = zprop_get_proptable(type);

 return (prop_tbl[prop].pd_values);
}
