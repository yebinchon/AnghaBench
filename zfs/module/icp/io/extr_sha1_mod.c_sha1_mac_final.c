
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef unsigned char uchar_t ;
typedef int sha1_hmac_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_10__ {scalar_t__ cd_length; int cd_format; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;
struct TYPE_11__ {int * cc_provider_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
struct TYPE_12__ {scalar_t__ hc_mech_type; scalar_t__ hc_digest_len; int hc_ocontext; int hc_icontext; } ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BUFFER_TOO_SMALL ;


 int CRYPTO_SUCCESS ;
 TYPE_7__* PROV_SHA1_HMAC_CTX (TYPE_3__*) ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int SHA1_DIGEST_LENGTH ;
 scalar_t__ SHA1_HMAC_GEN_MECH_INFO_TYPE ;
 int bcopy (unsigned char*,unsigned char*,scalar_t__) ;
 int bzero (int *,int) ;
 int kmem_free (int *,int) ;
 int sha1_digest_final_uio (int *,TYPE_2__*,scalar_t__,unsigned char*) ;

__attribute__((used)) static int
sha1_mac_final(crypto_ctx_t *ctx, crypto_data_t *mac, crypto_req_handle_t req)
{
 int ret = CRYPTO_SUCCESS;
 uchar_t digest[SHA1_DIGEST_LENGTH];
 uint32_t digest_len = SHA1_DIGEST_LENGTH;

 ASSERT(ctx->cc_provider_private != ((void*)0));

 if (PROV_SHA1_HMAC_CTX(ctx)->hc_mech_type ==
     SHA1_HMAC_GEN_MECH_INFO_TYPE)
  digest_len = PROV_SHA1_HMAC_CTX(ctx)->hc_digest_len;





 if ((mac->cd_length == 0) || (mac->cd_length < digest_len)) {
  mac->cd_length = digest_len;
  return (CRYPTO_BUFFER_TOO_SMALL);
 }




 SHA1Final(digest, &PROV_SHA1_HMAC_CTX(ctx)->hc_icontext);





 SHA1Update(&PROV_SHA1_HMAC_CTX(ctx)->hc_ocontext, digest,
     SHA1_DIGEST_LENGTH);





 switch (mac->cd_format) {
 case 129:
  if (digest_len != SHA1_DIGEST_LENGTH) {





   SHA1Final(digest,
       &PROV_SHA1_HMAC_CTX(ctx)->hc_ocontext);
   bcopy(digest, (unsigned char *)mac->cd_raw.iov_base +
       mac->cd_offset, digest_len);
  } else {
   SHA1Final((unsigned char *)mac->cd_raw.iov_base +
       mac->cd_offset,
       &PROV_SHA1_HMAC_CTX(ctx)->hc_ocontext);
  }
  break;
 case 128:
  ret = sha1_digest_final_uio(
      &PROV_SHA1_HMAC_CTX(ctx)->hc_ocontext, mac,
      digest_len, digest);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 if (ret == CRYPTO_SUCCESS) {
  mac->cd_length = digest_len;
 } else {
  mac->cd_length = 0;
 }

 bzero(ctx->cc_provider_private, sizeof (sha1_hmac_ctx_t));
 kmem_free(ctx->cc_provider_private, sizeof (sha1_hmac_ctx_t));
 ctx->cc_provider_private = ((void*)0);

 return (ret);
}
