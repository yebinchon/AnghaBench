
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sk_dk_lock; int sk_dsl_keys; } ;
struct TYPE_9__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_10__ {int dck_holds; } ;
typedef TYPE_3__ dsl_crypto_key_t ;


 int RW_WRITER ;
 int avl_remove (int *,TYPE_3__*) ;
 int dsl_crypto_key_free (TYPE_3__*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

void
spa_keystore_dsl_key_rele(spa_t *spa, dsl_crypto_key_t *dck, void *tag)
{
 rw_enter(&spa->spa_keystore.sk_dk_lock, RW_WRITER);

 if (zfs_refcount_remove(&dck->dck_holds, tag) == 0) {
  avl_remove(&spa->spa_keystore.sk_dsl_keys, dck);
  dsl_crypto_key_free(dck);
 }

 rw_exit(&spa->spa_keystore.sk_dk_lock);
}
