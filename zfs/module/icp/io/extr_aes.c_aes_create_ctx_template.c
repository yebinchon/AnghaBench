
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* crypto_spi_ctx_template_t ;
typedef int crypto_req_handle_t ;
typedef int crypto_provider_handle_t ;
struct TYPE_3__ {scalar_t__ cm_type; } ;
typedef TYPE_1__ crypto_mechanism_t ;
typedef int crypto_key_t ;


 scalar_t__ AES_CBC_MECH_INFO_TYPE ;
 scalar_t__ AES_CCM_MECH_INFO_TYPE ;
 scalar_t__ AES_CTR_MECH_INFO_TYPE ;
 scalar_t__ AES_ECB_MECH_INFO_TYPE ;
 scalar_t__ AES_GCM_MECH_INFO_TYPE ;
 scalar_t__ AES_GMAC_MECH_INFO_TYPE ;
 int CRYPTO_HOST_MEMORY ;
 int CRYPTO_MECHANISM_INVALID ;
 int CRYPTO_SUCCESS ;
 void* aes_alloc_keysched (size_t*,int ) ;
 int bzero (void*,size_t) ;
 int crypto_kmflag (int ) ;
 int init_keysched (int *,void*) ;
 int kmem_free (void*,size_t) ;

__attribute__((used)) static int
aes_create_ctx_template(crypto_provider_handle_t provider,
    crypto_mechanism_t *mechanism, crypto_key_t *key,
    crypto_spi_ctx_template_t *tmpl, size_t *tmpl_size, crypto_req_handle_t req)
{
 void *keysched;
 size_t size;
 int rv;

 if (mechanism->cm_type != AES_ECB_MECH_INFO_TYPE &&
     mechanism->cm_type != AES_CBC_MECH_INFO_TYPE &&
     mechanism->cm_type != AES_CTR_MECH_INFO_TYPE &&
     mechanism->cm_type != AES_CCM_MECH_INFO_TYPE &&
     mechanism->cm_type != AES_GCM_MECH_INFO_TYPE &&
     mechanism->cm_type != AES_GMAC_MECH_INFO_TYPE)
  return (CRYPTO_MECHANISM_INVALID);

 if ((keysched = aes_alloc_keysched(&size,
     crypto_kmflag(req))) == ((void*)0)) {
  return (CRYPTO_HOST_MEMORY);
 }





 if ((rv = init_keysched(key, keysched)) != CRYPTO_SUCCESS) {
  bzero(keysched, size);
  kmem_free(keysched, size);
  return (rv);
 }

 *tmpl = keysched;
 *tmpl_size = size;

 return (CRYPTO_SUCCESS);
}
