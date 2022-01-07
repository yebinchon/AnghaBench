
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ iov_base; } ;
struct TYPE_10__ {int cd_format; int cd_length; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;
struct TYPE_11__ {int * cc_provider_private; } ;
typedef TYPE_3__ crypto_ctx_t ;
struct TYPE_12__ {int sc_sha1_ctx; } ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;


 int CRYPTO_SUCCESS ;
 TYPE_7__* PROV_SHA1_CTX (TYPE_3__*) ;
 int SHA1Update (int *,int *,int ) ;
 int sha1_digest_update_uio (int *,TYPE_2__*) ;

__attribute__((used)) static int
sha1_digest_update(crypto_ctx_t *ctx, crypto_data_t *data,
    crypto_req_handle_t req)
{
 int ret = CRYPTO_SUCCESS;

 ASSERT(ctx->cc_provider_private != ((void*)0));




 switch (data->cd_format) {
 case 129:
  SHA1Update(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx,
      (uint8_t *)data->cd_raw.iov_base + data->cd_offset,
      data->cd_length);
  break;
 case 128:
  ret = sha1_digest_update_uio(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx,
      data);
  break;
 default:
  ret = CRYPTO_ARGUMENTS_BAD;
 }

 return (ret);
}
