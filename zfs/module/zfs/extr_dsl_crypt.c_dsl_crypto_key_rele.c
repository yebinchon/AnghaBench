
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dck_holds; } ;
typedef TYPE_1__ dsl_crypto_key_t ;


 int dsl_crypto_key_free (TYPE_1__*) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

__attribute__((used)) static void
dsl_crypto_key_rele(dsl_crypto_key_t *dck, void *tag)
{
 if (zfs_refcount_remove(&dck->dck_holds, tag) == 0)
  dsl_crypto_key_free(dck);
}
