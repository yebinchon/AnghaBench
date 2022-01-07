
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dck_wkey; int dck_holds; int dck_key; } ;
typedef TYPE_1__ dsl_crypto_key_t ;


 int ASSERT (int) ;
 int dsl_wrapping_key_rele (scalar_t__,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;
 scalar_t__ zfs_refcount_count (int *) ;
 int zfs_refcount_destroy (int *) ;
 int zio_crypt_key_destroy (int *) ;

__attribute__((used)) static void
dsl_crypto_key_free(dsl_crypto_key_t *dck)
{
 ASSERT(zfs_refcount_count(&dck->dck_holds) == 0);


 zio_crypt_key_destroy(&dck->dck_key);


 zfs_refcount_destroy(&dck->dck_holds);
 if (dck->dck_wkey)
  dsl_wrapping_key_rele(dck->dck_wkey, dck);


 kmem_free(dck, sizeof (dsl_crypto_key_t));
}
