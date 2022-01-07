
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * co_nostore_key_ops; } ;
typedef TYPE_1__ crypto_ops_t ;
typedef int crypto_nostore_key_ops_t ;


 int KM_SLEEP ;
 int * kmem_alloc (int,int ) ;

__attribute__((used)) static void
allocate_ops_v3(crypto_ops_t *src, crypto_ops_t *dst)
{
 if (src->co_nostore_key_ops != ((void*)0))
  dst->co_nostore_key_ops =
      kmem_alloc(sizeof (crypto_nostore_key_ops_t), KM_SLEEP);
}
