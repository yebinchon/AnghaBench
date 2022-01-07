
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zd_os; int zd_zilog; } ;
typedef TYPE_1__ ztest_ds_t ;


 int B_TRUE ;
 int dmu_objset_disown (int ,int ,TYPE_1__*) ;
 int zil_close (int ) ;
 TYPE_1__* ztest_ds ;
 int ztest_zd_fini (TYPE_1__*) ;

__attribute__((used)) static void
ztest_dataset_close(int d)
{
 ztest_ds_t *zd = &ztest_ds[d];

 zil_close(zd->zd_zilog);
 dmu_objset_disown(zd->zd_os, B_TRUE, zd);

 ztest_zd_fini(zd);
}
