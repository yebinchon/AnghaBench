
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_24__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_14__ ;


struct TYPE_39__ {scalar_t__ za_first_integer; } ;
typedef TYPE_3__ zap_cursor_t ;
typedef TYPE_3__ zap_attribute_t ;
typedef scalar_t__ uint64_t ;
typedef int dsl_wrapping_key_t ;
struct TYPE_40__ {int dp_meta_objset; TYPE_14__* dp_spa; } ;
typedef TYPE_5__ dsl_pool_t ;
struct TYPE_41__ {char* dd_myname; int dd_crypto_obj; } ;
typedef TYPE_6__ dsl_dir_t ;
struct TYPE_42__ {TYPE_2__* ds_dir; } ;
typedef TYPE_7__ dsl_dataset_t ;
struct TYPE_43__ {int * dck_wkey; } ;
typedef TYPE_8__ dsl_crypto_key_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
struct TYPE_38__ {scalar_t__ dd_object; } ;
struct TYPE_37__ {int dd_clones; int dd_child_dir_zapobj; } ;
struct TYPE_36__ {int sk_wkeys_lock; } ;
struct TYPE_35__ {TYPE_1__ spa_keystore; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int DSL_CRYPTO_KEY_ROOT_DDOBJ ;
 int ENOENT ;
 int FTAG ;
 int KM_SLEEP ;
 int RW_WRITE_HELD (int *) ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 TYPE_5__* dmu_tx_pool (int *) ;
 int dsl_crypto_key_sync (TYPE_8__*,int *) ;
 int dsl_dataset_hold_obj (TYPE_5__*,scalar_t__,int ,TYPE_7__**) ;
 int dsl_dataset_rele (TYPE_7__*,int ) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_6__*,scalar_t__*) ;
 int dsl_dir_hold_obj (TYPE_5__*,scalar_t__,int *,int ,TYPE_6__**) ;
 scalar_t__ dsl_dir_is_clone (TYPE_6__*) ;
 TYPE_24__* dsl_dir_phys (TYPE_6__*) ;
 int dsl_dir_rele (TYPE_6__*,int ) ;
 int dsl_wrapping_key_hold (int *,TYPE_8__*) ;
 int dsl_wrapping_key_rele (int *,TYPE_8__*) ;
 TYPE_3__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_3__*,int) ;
 int spa_keystore_dsl_key_hold_dd (TYPE_14__*,TYPE_6__*,int ,TYPE_8__**) ;
 int spa_keystore_dsl_key_rele (TYPE_14__*,TYPE_8__*,int ) ;
 int zap_cursor_advance (TYPE_3__*) ;
 int zap_cursor_fini (TYPE_3__*) ;
 int zap_cursor_init (TYPE_3__*,int ,int ) ;
 scalar_t__ zap_cursor_retrieve (TYPE_3__*,TYPE_3__*) ;
 int zap_update (int ,int ,int ,int,int,scalar_t__*,int *) ;

__attribute__((used)) static void
spa_keystore_change_key_sync_impl(uint64_t rddobj, uint64_t ddobj,
    uint64_t new_rddobj, dsl_wrapping_key_t *wkey, boolean_t skip,
    dmu_tx_t *tx)
{
 int ret;
 zap_cursor_t *zc;
 zap_attribute_t *za;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *dd = ((void*)0);
 dsl_crypto_key_t *dck = ((void*)0);
 uint64_t curr_rddobj;

 ASSERT(RW_WRITE_HELD(&dp->dp_spa->spa_keystore.sk_wkeys_lock));


 VERIFY0(dsl_dir_hold_obj(dp, ddobj, ((void*)0), FTAG, &dd));


 if (dd->dd_myname[0] == '$' || dd->dd_myname[0] == '%') {
  dsl_dir_rele(dd, FTAG);
  return;
 }

 ret = dsl_dir_get_encryption_root_ddobj(dd, &curr_rddobj);
 VERIFY(ret == 0 || ret == ENOENT);





 if (ret == ENOENT ||
     (!skip && (curr_rddobj != rddobj || dsl_dir_is_clone(dd)))) {
  dsl_dir_rele(dd, FTAG);
  return;
 }






 if (!skip) {
  if (wkey == ((void*)0)) {
   VERIFY0(zap_update(dp->dp_meta_objset,
       dd->dd_crypto_obj,
       DSL_CRYPTO_KEY_ROOT_DDOBJ, 8, 1,
       &new_rddobj, tx));
  } else {
   VERIFY0(spa_keystore_dsl_key_hold_dd(dp->dp_spa, dd,
       FTAG, &dck));
   dsl_wrapping_key_hold(wkey, dck);
   dsl_wrapping_key_rele(dck->dck_wkey, dck);
   dck->dck_wkey = wkey;
   dsl_crypto_key_sync(dck, tx);
   spa_keystore_dsl_key_rele(dp->dp_spa, dck, FTAG);
  }
 }

 zc = kmem_alloc(sizeof (zap_cursor_t), KM_SLEEP);
 za = kmem_alloc(sizeof (zap_attribute_t), KM_SLEEP);


 for (zap_cursor_init(zc, dp->dp_meta_objset,
     dsl_dir_phys(dd)->dd_child_dir_zapobj);
     zap_cursor_retrieve(zc, za) == 0;
     zap_cursor_advance(zc)) {
  spa_keystore_change_key_sync_impl(rddobj,
      za->za_first_integer, new_rddobj, wkey, B_FALSE, tx);
 }
 zap_cursor_fini(zc);







 for (zap_cursor_init(zc, dp->dp_meta_objset,
     dsl_dir_phys(dd)->dd_clones);
     zap_cursor_retrieve(zc, za) == 0;
     zap_cursor_advance(zc)) {
  dsl_dataset_t *clone;

  VERIFY0(dsl_dataset_hold_obj(dp, za->za_first_integer,
      FTAG, &clone));
  spa_keystore_change_key_sync_impl(rddobj,
      clone->ds_dir->dd_object, new_rddobj, wkey, B_TRUE, tx);
  dsl_dataset_rele(clone, FTAG);
 }
 zap_cursor_fini(zc);

 kmem_free(za, sizeof (zap_attribute_t));
 kmem_free(zc, sizeof (zap_cursor_t));

 dsl_dir_rele(dd, FTAG);
}
