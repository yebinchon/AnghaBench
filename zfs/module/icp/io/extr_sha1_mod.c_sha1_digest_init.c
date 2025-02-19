
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sha1_ctx_t ;
typedef int crypto_req_handle_t ;
struct TYPE_7__ {scalar_t__ cm_type; } ;
typedef TYPE_1__ crypto_mechanism_t ;
struct TYPE_8__ {int * cc_provider_private; } ;
typedef TYPE_2__ crypto_ctx_t ;
struct TYPE_9__ {int sc_sha1_ctx; scalar_t__ sc_mech_type; } ;


 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_SUCCESS ;
 TYPE_5__* PROV_SHA1_CTX (TYPE_2__*) ;
 int SHA1Init (int *) ;
 scalar_t__ SHA1_MECH_INFO_TYPE ;
 int crypto_kmflag (int ) ;
 int * kmem_alloc (int,int ) ;

__attribute__((used)) static int
sha1_digest_init(crypto_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_req_handle_t req)
{
 if (mechanism->cm_type != SHA1_MECH_INFO_TYPE)
  return (CRYPTO_MECHANISM_INVALID);




 ctx->cc_provider_private = kmem_alloc(sizeof (sha1_ctx_t),
     crypto_kmflag(req));
 if (ctx->cc_provider_private == ((void*)0))
  return (CRYPTO_HOST_MEMORY);

 PROV_SHA1_CTX(ctx)->sc_mech_type = SHA1_MECH_INFO_TYPE;
 SHA1Init(&PROV_SHA1_CTX(ctx)->sc_sha1_ctx);

 return (CRYPTO_SUCCESS);
}
