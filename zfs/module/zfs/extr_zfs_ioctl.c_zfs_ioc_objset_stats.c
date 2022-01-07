
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;


 int FTAG ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int zfs_ioc_objset_stats_impl (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioc_objset_stats(zfs_cmd_t *zc)
{
 objset_t *os;
 int error;

 error = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (error == 0) {
  error = zfs_ioc_objset_stats_impl(zc, os);
  dmu_objset_rele(os, FTAG);
 }

 return (error);
}
