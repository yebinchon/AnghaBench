
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cp_crypt; } ;
typedef TYPE_1__ dsl_crypto_params_t ;
typedef int boolean_t ;


 int ENOTSUP ;
 int SET_ERROR (int ) ;
 scalar_t__ ZIO_CRYPT_INHERIT ;
 scalar_t__ ZIO_CRYPT_OFF ;
 int dmu_objset_create_crypt_check (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
spa_create_check_encryption_params(dsl_crypto_params_t *dcp,
    boolean_t has_encryption)
{
 if (dcp->cp_crypt != ZIO_CRYPT_OFF &&
     dcp->cp_crypt != ZIO_CRYPT_INHERIT &&
     !has_encryption)
  return (SET_ERROR(ENOTSUP));

 return (dmu_objset_create_crypt_check(((void*)0), dcp, ((void*)0)));
}
