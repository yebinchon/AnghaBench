
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_session_id_t ;
typedef int crypto_provider_t ;
typedef int crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef int crypto_ctx_template_t ;
typedef int crypto_context_t ;
typedef int crypto_call_req_t ;


 int CRYPTO_FG_DECRYPT ;
 int crypto_cipher_init_prov (int ,int ,int *,int *,int ,int *,int *,int ) ;

int
crypto_decrypt_init_prov(crypto_provider_t pd, crypto_session_id_t sid,
    crypto_mechanism_t *mech, crypto_key_t *key,
    crypto_ctx_template_t tmpl, crypto_context_t *ctxp,
    crypto_call_req_t *crq)
{
 return (crypto_cipher_init_prov(pd, sid, mech, key, tmpl, ctxp, crq,
     CRYPTO_FG_DECRYPT));
}
