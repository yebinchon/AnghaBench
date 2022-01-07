
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t sp_digest_bitlen; } ;
typedef TYPE_1__ skein_param_t ;
struct TYPE_5__ {int cm_param_len; int cm_type; int * cm_param; } ;
typedef TYPE_2__ crypto_mechanism_t ;


 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;




__attribute__((used)) static int
skein_get_digest_bitlen(const crypto_mechanism_t *mechanism, size_t *result)
{
 if (mechanism->cm_param != ((void*)0)) {

  skein_param_t *param = (skein_param_t *)mechanism->cm_param;

  if (mechanism->cm_param_len != sizeof (*param) ||
      param->sp_digest_bitlen == 0) {
   return (CRYPTO_MECHANISM_PARAM_INVALID);
  }
  *result = param->sp_digest_bitlen;
 } else {
  switch (mechanism->cm_type) {
  case 129:
   *result = 256;
   break;
  case 128:
   *result = 512;
   break;
  case 130:
   *result = 1024;
   break;
  default:
   return (CRYPTO_MECHANISM_INVALID);
  }
 }
 return (CRYPTO_SUCCESS);
}
