
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sc_digest_bitlen; int sc_mech_type; } ;
typedef TYPE_1__ skein_ctx_t ;
struct TYPE_10__ {int cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
struct TYPE_11__ {scalar_t__ ck_format; int ck_length; int ck_data; } ;
typedef TYPE_3__ crypto_key_t ;


 int CRYPTO_ARGUMENTS_BAD ;
 int CRYPTO_BITS2BYTES (int ) ;
 scalar_t__ CRYPTO_KEY_RAW ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_SUCCESS ;
 int InitExt ;
 int SKEIN_OP (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int VALID_SKEIN_MAC_MECH (int ) ;
 int skein_get_digest_bitlen (TYPE_2__*,int *) ;

__attribute__((used)) static int
skein_mac_ctx_build(skein_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_key_t *key)
{
 int error;

 if (!VALID_SKEIN_MAC_MECH(mechanism->cm_type))
  return (CRYPTO_MECHANISM_INVALID);
 if (key->ck_format != CRYPTO_KEY_RAW)
  return (CRYPTO_ARGUMENTS_BAD);
 ctx->sc_mech_type = mechanism->cm_type;
 error = skein_get_digest_bitlen(mechanism, &ctx->sc_digest_bitlen);
 if (error != CRYPTO_SUCCESS)
  return (error);
 SKEIN_OP(ctx, InitExt, ctx->sc_digest_bitlen, 0, key->ck_data,
     CRYPTO_BITS2BYTES(key->ck_length));

 return (CRYPTO_SUCCESS);
}
