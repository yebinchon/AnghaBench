
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;
typedef int boolean_t ;


 scalar_t__ DMU_OST_ZFS ;
 int dmu_objset_is_snapshot (int *) ;
 scalar_t__ dmu_objset_projectquota_enabled (int *) ;
 int dmu_objset_projectquota_present (int *) ;
 int dmu_objset_spa (int *) ;
 scalar_t__ dmu_objset_type (int *) ;
 scalar_t__ spa_writeable (int ) ;

boolean_t
dmu_objset_projectquota_upgradable(objset_t *os)
{
 return (dmu_objset_type(os) == DMU_OST_ZFS &&
     !dmu_objset_is_snapshot(os) &&
     dmu_objset_projectquota_enabled(os) &&
     !dmu_objset_projectquota_present(os) &&
     spa_writeable(dmu_objset_spa(os)));
}
