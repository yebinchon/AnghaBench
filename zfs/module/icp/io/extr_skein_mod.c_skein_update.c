
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int crypto_req_handle_t ;
struct TYPE_5__ {scalar_t__ iov_base; } ;
struct TYPE_6__ {int cd_format; int cd_length; int cd_offset; TYPE_1__ cd_raw; } ;
typedef TYPE_2__ crypto_data_t ;
typedef int crypto_ctx_t ;


 int ASSERT (int ) ;
 int CRYPTO_ARGUMENTS_BAD ;


 int CRYPTO_SUCCESS ;
 int * SKEIN_CTX (int *) ;
 int SKEIN_OP (int *,int ,int *,int ) ;
 int Update ;
 int skein_digest_update_uio (int *,TYPE_2__*) ;

__attribute__((used)) static int
skein_update(crypto_ctx_t *ctx, crypto_data_t *data, crypto_req_handle_t req)
{
 int error = CRYPTO_SUCCESS;

 ASSERT(SKEIN_CTX(ctx) != ((void*)0));

 switch (data->cd_format) {
 case 129:
  SKEIN_OP(SKEIN_CTX(ctx), Update,
      (uint8_t *)data->cd_raw.iov_base + data->cd_offset,
      data->cd_length);
  break;
 case 128:
  error = skein_digest_update_uio(SKEIN_CTX(ctx), data);
  break;
 default:
  error = CRYPTO_ARGUMENTS_BAD;
 }

 return (error);
}
