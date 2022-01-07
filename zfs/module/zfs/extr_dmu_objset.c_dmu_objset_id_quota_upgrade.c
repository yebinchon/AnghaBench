
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int objset_t ;


 int dmu_objset_id_quota_upgrade_cb ;
 int dmu_objset_upgrade (int *,int ) ;

void
dmu_objset_id_quota_upgrade(objset_t *os)
{
 dmu_objset_upgrade(os, dmu_objset_id_quota_upgrade_cb);
}
