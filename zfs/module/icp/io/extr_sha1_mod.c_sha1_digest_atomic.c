
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int crypto_session_id_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_provider_handle_t ;
struct TYPE_10__ {scalar_t__ cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_11__ {int cd_format; scalar_t__ cd_length; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_3__ crypto_data_t ;
typedef int SHA1_CTX ;


 int CRYPTO_ARGUMENTS_BAD ;


 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_SUCCESS ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,int *,scalar_t__) ;
 scalar_t__ SHA1_DIGEST_LENGTH ;
 scalar_t__ SHA1_MECH_INFO_TYPE ;
 int sha1_digest_final_uio (int *,TYPE_3__*,scalar_t__,int *) ;
 int sha1_digest_update_uio (int *,TYPE_3__*) ;

__attribute__((used)) static int
sha1_digest_atomic(crypto_provider_handle_t provider,
    crypto_session_id_t session_id, crypto_mechanism_t *mechanism,
    crypto_data_t *data, crypto_data_t *digest,
    crypto_req_handle_t req)
{
 int ret = CRYPTO_SUCCESS;
 SHA1_CTX sha1_ctx;

 if (mechanism->cm_type != SHA1_MECH_INFO_TYPE)
  return (CRYPTO_MECHANISM_INVALID);




 SHA1Init(&sha1_ctx);




 switch (data->cd_format) {
 case 129:
  SHA1Update(&sha1_ctx,
      (uint8_t *)data->cd_raw.iov_base + data->cd_offset,
      data->cd_length);
  break;
 case 128:
  ret = sha1_digest_update_uio(&sha1_ctx, data);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret != CRYPTO_SUCCESS) {

  digest->cd_length = 0;
  return (ret);
 }





 switch (digest->cd_format) {
 case 129:
  SHA1Final((unsigned char *)digest->cd_raw.iov_base +
      digest->cd_offset, &sha1_ctx);
  break;
 case 128:
  ret = sha1_digest_final_uio(&sha1_ctx, digest,
      SHA1_DIGEST_LENGTH, ((void*)0));
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret == CRYPTO_SUCCESS) {
  digest->cd_length = SHA1_DIGEST_LENGTH;
 } else {
  digest->cd_length = 0;
 }

 return (ret);
}
