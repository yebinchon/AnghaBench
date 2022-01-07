
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint64_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_22__ {int dp_scan; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dmu_tx_t ;
struct TYPE_23__ {int ddt_checksum; TYPE_1__* ddt_spa; } ;
typedef TYPE_3__ ddt_t ;
struct TYPE_24__ {scalar_t__ ddp_phys_birth; scalar_t__ ddp_refcnt; } ;
typedef TYPE_4__ ddt_phys_t ;
typedef int ddt_key_t ;
struct TYPE_25__ {int dde_type; int dde_class; int dde_loaded; TYPE_4__* dde_phys; int ** dde_lead_zio; int dde_loading; int dde_key; } ;
typedef TYPE_5__ ddt_entry_t ;
struct TYPE_21__ {TYPE_2__* spa_dsl_pool; } ;


 int ASSERT (int) ;
 int ASSERT0 (scalar_t__) ;
 int DDT_CLASS_DUPLICATE ;
 int DDT_CLASS_UNIQUE ;
 int DDT_PHYS_DITTO ;
 int DDT_PHYS_TYPES ;
 int DDT_TYPES ;
 int DDT_TYPE_CURRENT ;
 scalar_t__ ENOENT ;
 int VERIFY (int) ;
 int ddt_object_create (TYPE_3__*,int,int,int *) ;
 int ddt_object_exists (TYPE_3__*,int,int) ;
 scalar_t__ ddt_object_lookup (TYPE_3__*,int,int,TYPE_5__*) ;
 scalar_t__ ddt_object_remove (TYPE_3__*,int,int,TYPE_5__*,int *) ;
 scalar_t__ ddt_object_update (TYPE_3__*,int,int,TYPE_5__*,int *) ;
 int ddt_phys_free (TYPE_3__*,int *,TYPE_4__*,int) ;
 int ddt_stat_update (TYPE_3__*,TYPE_5__*,int ) ;
 int dsl_scan_ddt_entry (int ,int ,TYPE_5__*,int *) ;

__attribute__((used)) static void
ddt_sync_entry(ddt_t *ddt, ddt_entry_t *dde, dmu_tx_t *tx, uint64_t txg)
{
 dsl_pool_t *dp = ddt->ddt_spa->spa_dsl_pool;
 ddt_phys_t *ddp = dde->dde_phys;
 ddt_key_t *ddk = &dde->dde_key;
 enum ddt_type otype = dde->dde_type;
 enum ddt_type ntype = DDT_TYPE_CURRENT;
 enum ddt_class oclass = dde->dde_class;
 enum ddt_class nclass;
 uint64_t total_refcnt = 0;

 ASSERT(dde->dde_loaded);
 ASSERT(!dde->dde_loading);

 for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
  ASSERT(dde->dde_lead_zio[p] == ((void*)0));
  if (ddp->ddp_phys_birth == 0) {
   ASSERT(ddp->ddp_refcnt == 0);
   continue;
  }
  if (p == DDT_PHYS_DITTO) {




   ddt_phys_free(ddt, ddk, ddp, txg);
   continue;
  }
  if (ddp->ddp_refcnt == 0)
   ddt_phys_free(ddt, ddk, ddp, txg);
  total_refcnt += ddp->ddp_refcnt;
 }


 ASSERT0(dde->dde_phys[DDT_PHYS_DITTO].ddp_phys_birth);
 if (total_refcnt > 1)
  nclass = DDT_CLASS_DUPLICATE;
 else
  nclass = DDT_CLASS_UNIQUE;

 if (otype != DDT_TYPES &&
     (otype != ntype || oclass != nclass || total_refcnt == 0)) {
  VERIFY(ddt_object_remove(ddt, otype, oclass, dde, tx) == 0);
  ASSERT(ddt_object_lookup(ddt, otype, oclass, dde) == ENOENT);
 }

 if (total_refcnt != 0) {
  dde->dde_type = ntype;
  dde->dde_class = nclass;
  ddt_stat_update(ddt, dde, 0);
  if (!ddt_object_exists(ddt, ntype, nclass))
   ddt_object_create(ddt, ntype, nclass, tx);
  VERIFY(ddt_object_update(ddt, ntype, nclass, dde, tx) == 0);
  if (nclass < oclass) {
   dsl_scan_ddt_entry(dp->dp_scan,
       ddt->ddt_checksum, dde, tx);
  }
 }
}
