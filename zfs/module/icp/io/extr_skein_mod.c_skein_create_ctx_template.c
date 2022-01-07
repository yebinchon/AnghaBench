
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int skein_ctx_t ;
typedef int * crypto_spi_ctx_template_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_provider_handle_t ;
typedef int crypto_mechanism_t ;
typedef int crypto_key_t ;


 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_SUCCESS ;
 int bzero (int *,int) ;
 int crypto_kmflag (int ) ;
 int * kmem_alloc (int,int ) ;
 int kmem_free (int *,int) ;
 int skein_mac_ctx_build (int *,int *,int *) ;

__attribute__((used)) static int
skein_create_ctx_template(crypto_provider_handle_t provider,
    crypto_mechanism_t *mechanism, crypto_key_t *key,
    crypto_spi_ctx_template_t *ctx_template, size_t *ctx_template_size,
    crypto_req_handle_t req)
{
 int error;
 skein_ctx_t *ctx_tmpl;

 ctx_tmpl = kmem_alloc(sizeof (*ctx_tmpl), crypto_kmflag(req));
 if (ctx_tmpl == ((void*)0))
  return (CRYPTO_HOST_MEMORY);
 error = skein_mac_ctx_build(ctx_tmpl, mechanism, key);
 if (error != CRYPTO_SUCCESS)
  goto errout;
 *ctx_template = ctx_tmpl;
 *ctx_template_size = sizeof (*ctx_tmpl);

 return (CRYPTO_SUCCESS);
errout:
 bzero(ctx_tmpl, sizeof (*ctx_tmpl));
 kmem_free(ctx_tmpl, sizeof (*ctx_tmpl));
 return (error);
}
