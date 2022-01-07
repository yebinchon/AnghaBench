
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef int crypto_ctx_template_t ;
typedef int crypto_context_t ;
typedef int crypto_call_req_t ;


 int CRYPTO_FG_ENCRYPT ;
 int crypto_cipher_init (int *,int *,int ,int *,int *,int ) ;

int
crypto_encrypt_init(crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_context_t *ctxp,
    crypto_call_req_t *crq)
{
 return (crypto_cipher_init(mech, key, tmpl, ctxp, crq,
     CRYPTO_FG_ENCRYPT));
}
