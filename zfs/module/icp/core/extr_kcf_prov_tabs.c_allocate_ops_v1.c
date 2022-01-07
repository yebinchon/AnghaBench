
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int crypto_verify_ops_t ;
typedef int crypto_sign_ops_t ;
typedef int crypto_session_ops_t ;
typedef int crypto_random_number_ops_t ;
typedef int crypto_provider_management_ops_t ;
struct TYPE_4__ {int * co_ctx_ops; int * co_provider_ops; int * co_key_ops; int * co_object_ops; int * co_session_ops; int * co_random_ops; int * co_dual_cipher_mac_ops; int * co_dual_ops; int * co_verify_ops; int * co_sign_ops; int * co_mac_ops; int * co_cipher_ops; int * co_digest_ops; int * co_control_ops; } ;
typedef TYPE_1__ crypto_ops_t ;
typedef int crypto_object_ops_t ;
typedef int crypto_mac_ops_t ;
typedef int crypto_key_ops_t ;
typedef int crypto_dual_ops_t ;
typedef int crypto_dual_cipher_mac_ops_t ;
typedef int crypto_digest_ops_t ;
typedef int crypto_ctx_ops_t ;
typedef int crypto_control_ops_t ;
typedef int crypto_cipher_ops_t ;


 int KM_SLEEP ;
 void* kmem_alloc (int,int ) ;

__attribute__((used)) static void
allocate_ops_v1(crypto_ops_t *src, crypto_ops_t *dst, uint_t *mech_list_count)
{
 if (src->co_control_ops != ((void*)0))
  dst->co_control_ops = kmem_alloc(sizeof (crypto_control_ops_t),
      KM_SLEEP);

 if (src->co_digest_ops != ((void*)0))
  dst->co_digest_ops = kmem_alloc(sizeof (crypto_digest_ops_t),
      KM_SLEEP);

 if (src->co_cipher_ops != ((void*)0))
  dst->co_cipher_ops = kmem_alloc(sizeof (crypto_cipher_ops_t),
      KM_SLEEP);

 if (src->co_mac_ops != ((void*)0))
  dst->co_mac_ops = kmem_alloc(sizeof (crypto_mac_ops_t),
      KM_SLEEP);

 if (src->co_sign_ops != ((void*)0))
  dst->co_sign_ops = kmem_alloc(sizeof (crypto_sign_ops_t),
      KM_SLEEP);

 if (src->co_verify_ops != ((void*)0))
  dst->co_verify_ops = kmem_alloc(sizeof (crypto_verify_ops_t),
      KM_SLEEP);

 if (src->co_dual_ops != ((void*)0))
  dst->co_dual_ops = kmem_alloc(sizeof (crypto_dual_ops_t),
      KM_SLEEP);

 if (src->co_dual_cipher_mac_ops != ((void*)0))
  dst->co_dual_cipher_mac_ops = kmem_alloc(
      sizeof (crypto_dual_cipher_mac_ops_t), KM_SLEEP);

 if (src->co_random_ops != ((void*)0)) {
  dst->co_random_ops = kmem_alloc(
      sizeof (crypto_random_number_ops_t), KM_SLEEP);







  (*mech_list_count)++;
 }

 if (src->co_session_ops != ((void*)0))
  dst->co_session_ops = kmem_alloc(sizeof (crypto_session_ops_t),
      KM_SLEEP);

 if (src->co_object_ops != ((void*)0))
  dst->co_object_ops = kmem_alloc(sizeof (crypto_object_ops_t),
      KM_SLEEP);

 if (src->co_key_ops != ((void*)0))
  dst->co_key_ops = kmem_alloc(sizeof (crypto_key_ops_t),
      KM_SLEEP);

 if (src->co_provider_ops != ((void*)0))
  dst->co_provider_ops = kmem_alloc(
      sizeof (crypto_provider_management_ops_t), KM_SLEEP);

 if (src->co_ctx_ops != ((void*)0))
  dst->co_ctx_ops = kmem_alloc(sizeof (crypto_ctx_ops_t),
      KM_SLEEP);
}
