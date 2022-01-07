
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ pd_attr; } ;


 scalar_t__ PROP_ONETIME ;
 scalar_t__ PROP_ONETIME_DEFAULT ;
 scalar_t__ PROP_READONLY ;
 TYPE_1__* zfs_prop_table ;

boolean_t
zfs_prop_readonly(zfs_prop_t prop)
{
 return (zfs_prop_table[prop].pd_attr == PROP_READONLY ||
     zfs_prop_table[prop].pd_attr == PROP_ONETIME ||
     zfs_prop_table[prop].pd_attr == PROP_ONETIME_DEFAULT);
}
