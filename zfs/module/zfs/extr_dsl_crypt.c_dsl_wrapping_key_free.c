
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ck_length; TYPE_2__* ck_data; } ;
struct TYPE_7__ {int wk_refcnt; TYPE_1__ wk_key; } ;
typedef TYPE_2__ dsl_wrapping_key_t ;


 int ASSERT0 (int ) ;
 int CRYPTO_BITS2BYTES (int ) ;
 int bzero (TYPE_2__*,int) ;
 int kmem_free (TYPE_2__*,int) ;
 int zfs_refcount_count (int *) ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
dsl_wrapping_key_free(dsl_wrapping_key_t *wkey)
{
 ASSERT0(zfs_refcount_count(&wkey->wk_refcnt));

 if (wkey->wk_key.ck_data) {
  bzero(wkey->wk_key.ck_data,
      CRYPTO_BITS2BYTES(wkey->wk_key.ck_length));
  kmem_free(wkey->wk_key.ck_data,
      CRYPTO_BITS2BYTES(wkey->wk_key.ck_length));
 }

 zfs_refcount_destroy(&wkey->wk_refcnt);
 kmem_free(wkey, sizeof (dsl_wrapping_key_t));
}
