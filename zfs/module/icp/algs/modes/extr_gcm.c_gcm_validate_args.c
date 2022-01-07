
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ulTagBits; scalar_t__ ulIvLen; } ;
typedef TYPE_1__ CK_AES_GCM_PARAMS ;


 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;

__attribute__((used)) static int
gcm_validate_args(CK_AES_GCM_PARAMS *gcm_param)
{
 size_t tag_len;




 tag_len = gcm_param->ulTagBits;
 switch (tag_len) {
 case 32:
 case 64:
 case 96:
 case 104:
 case 112:
 case 120:
 case 128:
  break;
 default:
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }

 if (gcm_param->ulIvLen == 0)
  return (CRYPTO_MECHANISM_PARAM_INVALID);

 return (CRYPTO_SUCCESS);
}
