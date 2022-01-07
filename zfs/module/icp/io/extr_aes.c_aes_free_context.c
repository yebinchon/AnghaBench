
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* cc_provider_private; } ;
typedef TYPE_1__ crypto_ctx_t ;
struct TYPE_6__ {int ac_flags; scalar_t__ ac_keysched_len; int ac_keysched; } ;
typedef TYPE_2__ aes_ctx_t ;


 int ASSERT (int) ;
 int CRYPTO_SUCCESS ;
 int PROVIDER_OWNS_KEY_SCHEDULE ;
 int bzero (int ,scalar_t__) ;
 int crypto_free_mode_ctx (TYPE_2__*) ;
 int kmem_free (int ,scalar_t__) ;

__attribute__((used)) static int
aes_free_context(crypto_ctx_t *ctx)
{
 aes_ctx_t *aes_ctx = ctx->cc_provider_private;

 if (aes_ctx != ((void*)0)) {
  if (aes_ctx->ac_flags & PROVIDER_OWNS_KEY_SCHEDULE) {
   ASSERT(aes_ctx->ac_keysched_len != 0);
   bzero(aes_ctx->ac_keysched, aes_ctx->ac_keysched_len);
   kmem_free(aes_ctx->ac_keysched,
       aes_ctx->ac_keysched_len);
  }
  crypto_free_mode_ctx(aes_ctx);
  ctx->cc_provider_private = ((void*)0);
 }

 return (CRYPTO_SUCCESS);
}
