
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_10__ {scalar_t__ cm_type; int cm_param_len; scalar_t__ cm_param; } ;
typedef TYPE_2__ crypto_mechanism_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_11__ {scalar_t__ cd_format; int cd_length; TYPE_1__ cd_raw; } ;
typedef TYPE_3__ crypto_data_t ;
struct TYPE_13__ {int ulAADLen; int * pAAD; int ulTagBits; int ulIvLen; int * pIv; } ;
struct TYPE_12__ {int * pIv; } ;
typedef TYPE_4__ CK_AES_GMAC_PARAMS ;
typedef TYPE_5__ CK_AES_GCM_PARAMS ;


 int AES_GMAC_IV_LEN ;
 scalar_t__ AES_GMAC_MECH_INFO_TYPE ;
 int AES_GMAC_TAG_BITS ;
 int CRYPTO_ARGUMENTS_BAD ;
 scalar_t__ CRYPTO_DATA_RAW ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_MECHANISM_PARAM_INVALID ;
 int CRYPTO_SUCCESS ;

__attribute__((used)) static int
process_gmac_mech(crypto_mechanism_t *mech, crypto_data_t *data,
    CK_AES_GCM_PARAMS *gcm_params)
{

 CK_AES_GMAC_PARAMS *params = (CK_AES_GMAC_PARAMS *)mech->cm_param;

 if (mech->cm_type != AES_GMAC_MECH_INFO_TYPE)
  return (CRYPTO_MECHANISM_INVALID);

 if (mech->cm_param_len != sizeof (CK_AES_GMAC_PARAMS))
  return (CRYPTO_MECHANISM_PARAM_INVALID);

 if (params->pIv == ((void*)0))
  return (CRYPTO_MECHANISM_PARAM_INVALID);

 gcm_params->pIv = params->pIv;
 gcm_params->ulIvLen = AES_GMAC_IV_LEN;
 gcm_params->ulTagBits = AES_GMAC_TAG_BITS;

 if (data == ((void*)0))
  return (CRYPTO_SUCCESS);

 if (data->cd_format != CRYPTO_DATA_RAW)
  return (CRYPTO_ARGUMENTS_BAD);

 gcm_params->pAAD = (uchar_t *)data->cd_raw.iov_base;
 gcm_params->ulAADLen = data->cd_length;
 return (CRYPTO_SUCCESS);
}
