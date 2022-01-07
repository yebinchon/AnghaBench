
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {struct TYPE_8__* dd_parent; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;
struct TYPE_9__ {scalar_t__ dd_deleg_zapobj; } ;
struct TYPE_7__ {int dp_meta_objset; } ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ SPA_VERSION_DELEGATED_PERMS ;
 int copy_create_perms (TYPE_2__*,scalar_t__,int ,scalar_t__,int *) ;
 scalar_t__ crgetuid (int *) ;
 int dmu_objset_spa (int ) ;
 TYPE_3__* dsl_dir_phys (TYPE_2__*) ;
 scalar_t__ spa_version (int ) ;

void
dsl_deleg_set_create_perms(dsl_dir_t *sdd, dmu_tx_t *tx, cred_t *cr)
{
 dsl_dir_t *dd;
 uint64_t uid = crgetuid(cr);

 if (spa_version(dmu_objset_spa(sdd->dd_pool->dp_meta_objset)) <
     SPA_VERSION_DELEGATED_PERMS)
  return;

 for (dd = sdd->dd_parent; dd != ((void*)0); dd = dd->dd_parent) {
  uint64_t pzapobj = dsl_dir_phys(dd)->dd_deleg_zapobj;

  if (pzapobj == 0)
   continue;

  copy_create_perms(sdd, pzapobj, B_FALSE, uid, tx);
  copy_create_perms(sdd, pzapobj, B_TRUE, uid, tx);
 }
}
