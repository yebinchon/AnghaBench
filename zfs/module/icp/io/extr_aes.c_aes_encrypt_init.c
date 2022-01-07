
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_spi_ctx_template_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_mechanism_t ;
typedef int crypto_key_t ;
typedef int crypto_ctx_t ;


 int B_TRUE ;
 int aes_common_init (int *,int *,int *,int ,int ,int ) ;

__attribute__((used)) static int
aes_encrypt_init(crypto_ctx_t *ctx, crypto_mechanism_t *mechanism,
    crypto_key_t *key, crypto_spi_ctx_template_t template,
    crypto_req_handle_t req)
{
 return (aes_common_init(ctx, mechanism, key, template, req, B_TRUE));
}
