
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned long long uint64_t ;
typedef int boolean_t ;
struct TYPE_3__ {size_t ulMACSize; size_t ulNonceSize; size_t ulDataSize; } ;
typedef TYPE_1__ CK_AES_CCM_PARAMS ;


 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;
 unsigned long long ULONG_MAX ;

int
ccm_validate_args(CK_AES_CCM_PARAMS *ccm_param, boolean_t is_encrypt_init)
{
 size_t macSize, nonceSize;
 uint8_t q;
 uint64_t maxValue;





 macSize = ccm_param->ulMACSize;
 if ((macSize < 4) || (macSize > 16) || ((macSize % 2) != 0)) {
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }


 nonceSize = ccm_param->ulNonceSize;
 if ((nonceSize < 7) || (nonceSize > 13)) {
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }


 q = (uint8_t)((15 - nonceSize) & 0xFF);






 if ((!is_encrypt_init) && (ccm_param->ulDataSize < macSize)) {
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }





 if (q < 8) {
  maxValue = (1ULL << (q * 8)) - 1;
 } else {
  maxValue = ULONG_MAX;
 }

 if (ccm_param->ulDataSize > maxValue) {
  return (CRYPTO_MECHANISM_PARAM_INVALID);
 }
 return (CRYPTO_SUCCESS);
}
