
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ dd_crypto_obj; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_4__ {int dp_meta_objset; } ;


 int DSL_CRYPTO_KEY_CRYPTO_SUITE ;
 int ZIO_CRYPT_OFF ;
 int zap_lookup (int ,scalar_t__,int ,int,int,int *) ;

__attribute__((used)) static int
dsl_dir_get_crypt(dsl_dir_t *dd, uint64_t *crypt)
{
 if (dd->dd_crypto_obj == 0) {
  *crypt = ZIO_CRYPT_OFF;
  return (0);
 }

 return (zap_lookup(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
     DSL_CRYPTO_KEY_CRYPTO_SUITE, 8, 1, crypt));
}
