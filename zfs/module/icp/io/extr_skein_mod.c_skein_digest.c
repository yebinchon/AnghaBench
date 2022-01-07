
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int crypto_req_handle_t ;
struct TYPE_9__ {scalar_t__ cd_length; } ;
typedef TYPE_1__ crypto_data_t ;
typedef int crypto_ctx_t ;
struct TYPE_10__ {int sc_digest_bitlen; } ;
typedef int * SKEIN_CTX_LVALUE ;


 int ASSERT (int ) ;
 scalar_t__ CRYPTO_BITS2BYTES (int ) ;
 int CRYPTO_BUFFER_TOO_SMALL ;
 int CRYPTO_SUCCESS ;
 TYPE_6__* SKEIN_CTX (int *) ;
 int bzero (TYPE_6__*,int) ;
 int kmem_free (TYPE_6__*,int) ;
 int skein_final (int *,TYPE_1__*,int ) ;
 int skein_update (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
skein_digest(crypto_ctx_t *ctx, crypto_data_t *data, crypto_data_t *digest,
    crypto_req_handle_t req)
{
 int error = CRYPTO_SUCCESS;

 ASSERT(SKEIN_CTX(ctx) != ((void*)0));

 if (digest->cd_length <
     CRYPTO_BITS2BYTES(SKEIN_CTX(ctx)->sc_digest_bitlen)) {
  digest->cd_length =
      CRYPTO_BITS2BYTES(SKEIN_CTX(ctx)->sc_digest_bitlen);
  return (CRYPTO_BUFFER_TOO_SMALL);
 }

 error = skein_update(ctx, data, req);
 if (error != CRYPTO_SUCCESS) {
  bzero(SKEIN_CTX(ctx), sizeof (*SKEIN_CTX(ctx)));
  kmem_free(SKEIN_CTX(ctx), sizeof (*SKEIN_CTX(ctx)));
  SKEIN_CTX_LVALUE(ctx) = ((void*)0);
  digest->cd_length = 0;
  return (error);
 }
 error = skein_final(ctx, digest, req);

 return (error);
}
