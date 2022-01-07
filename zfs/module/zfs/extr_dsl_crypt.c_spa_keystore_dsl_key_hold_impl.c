
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int sk_dsl_keys; int sk_dk_lock; } ;
struct TYPE_9__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_10__ {int dck_holds; int dck_obj; } ;
typedef TYPE_3__ dsl_crypto_key_t ;


 int ASSERT (int ) ;
 int ENOENT ;
 int RW_LOCK_HELD (int *) ;
 int SET_ERROR (int ) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int zfs_refcount_add (int *,void*) ;

__attribute__((used)) static int
spa_keystore_dsl_key_hold_impl(spa_t *spa, uint64_t dckobj, void *tag,
    dsl_crypto_key_t **dck_out)
{
 int ret;
 dsl_crypto_key_t search_dck;
 dsl_crypto_key_t *found_dck;

 ASSERT(RW_LOCK_HELD(&spa->spa_keystore.sk_dk_lock));


 search_dck.dck_obj = dckobj;


 found_dck = avl_find(&spa->spa_keystore.sk_dsl_keys, &search_dck, ((void*)0));
 if (!found_dck) {
  ret = SET_ERROR(ENOENT);
  goto error;
 }


 zfs_refcount_add(&found_dck->dck_holds, tag);

 *dck_out = found_dck;
 return (0);

error:
 *dck_out = ((void*)0);
 return (ret);
}
