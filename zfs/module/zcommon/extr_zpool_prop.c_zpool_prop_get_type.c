
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zprop_type_t ;
typedef size_t zpool_prop_t ;
struct TYPE_2__ {int pd_proptype; } ;


 TYPE_1__* zpool_prop_table ;

zprop_type_t
zpool_prop_get_type(zpool_prop_t prop)
{
 return (zpool_prop_table[prop].pd_proptype);
}
