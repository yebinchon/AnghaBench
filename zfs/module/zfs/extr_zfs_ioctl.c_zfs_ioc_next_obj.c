
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_obj; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;


 int B_FALSE ;
 int FTAG ;
 int dmu_object_next (int *,int *,int ,int ) ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;

__attribute__((used)) static int
zfs_ioc_next_obj(zfs_cmd_t *zc)
{
 objset_t *os = ((void*)0);
 int error;

 error = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (error != 0)
  return (error);

 error = dmu_object_next(os, &zc->zc_obj, B_FALSE, 0);

 dmu_objset_rele(os, FTAG);
 return (error);
}
