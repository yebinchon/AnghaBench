
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_value; int zc_obj; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int dsl_dsobj_to_dsname (int ,int ,int ) ;

__attribute__((used)) static int
zfs_ioc_dsobj_to_dsname(zfs_cmd_t *zc)
{
 return (dsl_dsobj_to_dsname(zc->zc_name, zc->zc_obj, zc->zc_value));
}
