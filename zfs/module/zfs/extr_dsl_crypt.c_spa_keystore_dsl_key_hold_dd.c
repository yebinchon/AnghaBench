
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int sk_dk_lock; int sk_dsl_keys; } ;
struct TYPE_10__ {TYPE_1__ spa_keystore; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int dsl_wrapping_key_t ;
struct TYPE_11__ {int dd_crypto_obj; } ;
typedef TYPE_3__ dsl_dir_t ;
typedef int dsl_crypto_key_t ;
typedef int avl_index_t ;


 int EACCES ;
 int FTAG ;
 int RW_READER ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int avl_find (int *,int *,int *) ;
 int avl_insert (int *,int *,int ) ;
 int dsl_crypto_key_free (int *) ;
 int dsl_crypto_key_open (int ,int *,int ,void*,int **) ;
 int dsl_wrapping_key_rele (int *,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_keystore_dsl_key_hold_impl (TYPE_2__*,int ,void*,int **) ;
 int spa_keystore_wkey_hold_dd (TYPE_2__*,TYPE_3__*,int ,int **) ;

__attribute__((used)) static int
spa_keystore_dsl_key_hold_dd(spa_t *spa, dsl_dir_t *dd, void *tag,
    dsl_crypto_key_t **dck_out)
{
 int ret;
 avl_index_t where;
 dsl_crypto_key_t *dck_io = ((void*)0), *dck_ks = ((void*)0);
 dsl_wrapping_key_t *wkey = ((void*)0);
 uint64_t dckobj = dd->dd_crypto_obj;


 rw_enter(&spa->spa_keystore.sk_dk_lock, RW_READER);
 ret = spa_keystore_dsl_key_hold_impl(spa, dckobj, tag, &dck_ks);
 rw_exit(&spa->spa_keystore.sk_dk_lock);
 if (ret == 0) {
  *dck_out = dck_ks;
  return (0);
 }


 ret = spa_keystore_wkey_hold_dd(spa, dd, FTAG, &wkey);
 if (ret != 0) {
  *dck_out = ((void*)0);
  return (SET_ERROR(EACCES));
 }


 ret = dsl_crypto_key_open(spa->spa_meta_objset, wkey, dckobj,
     tag, &dck_io);
 if (ret != 0) {
  dsl_wrapping_key_rele(wkey, FTAG);
  *dck_out = ((void*)0);
  return (ret);
 }






 rw_enter(&spa->spa_keystore.sk_dk_lock, RW_WRITER);
 ret = spa_keystore_dsl_key_hold_impl(spa, dckobj, tag, &dck_ks);
 if (ret != 0) {
  avl_find(&spa->spa_keystore.sk_dsl_keys, dck_io, &where);
  avl_insert(&spa->spa_keystore.sk_dsl_keys, dck_io, where);
  *dck_out = dck_io;
 } else {
  dsl_crypto_key_free(dck_io);
  *dck_out = dck_ks;
 }


 dsl_wrapping_key_rele(wkey, FTAG);
 rw_exit(&spa->spa_keystore.sk_dk_lock);

 return (0);
}
