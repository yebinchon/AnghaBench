
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_6__ {scalar_t__ za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {scalar_t__ doi_type; } ;
typedef TYPE_2__ dmu_object_info_t ;
struct TYPE_8__ {scalar_t__ dp_empty_bpobj; } ;


 scalar_t__ DMU_OT_BPOBJ ;
 int VERIFY0 (int ) ;
 int bpobj_decr_empty (int *,int *) ;
 int bpobj_free (int *,scalar_t__,int *) ;
 int dmu_object_free (int *,scalar_t__,int *) ;
 int dmu_object_info (int *,scalar_t__,TYPE_2__*) ;
 TYPE_4__* dmu_objset_pool (int *) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;

void
dsl_deadlist_free(objset_t *os, uint64_t dlobj, dmu_tx_t *tx)
{
 dmu_object_info_t doi;
 zap_cursor_t zc;
 zap_attribute_t za;

 VERIFY0(dmu_object_info(os, dlobj, &doi));
 if (doi.doi_type == DMU_OT_BPOBJ) {
  bpobj_free(os, dlobj, tx);
  return;
 }

 for (zap_cursor_init(&zc, os, dlobj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  uint64_t obj = za.za_first_integer;
  if (obj == dmu_objset_pool(os)->dp_empty_bpobj)
   bpobj_decr_empty(os, tx);
  else
   bpobj_free(os, obj, tx);
 }
 zap_cursor_fini(&zc);
 VERIFY0(dmu_object_free(os, dlobj, tx));
}
