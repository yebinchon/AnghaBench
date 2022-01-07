
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_ops_t ;


 int KCF_SPI_COPY_OPS (int *,int *,int ) ;
 int co_cipher_ops ;
 int co_control_ops ;
 int co_ctx_ops ;
 int co_digest_ops ;
 int co_dual_cipher_mac_ops ;
 int co_dual_ops ;
 int co_key_ops ;
 int co_mac_ops ;
 int co_object_ops ;
 int co_provider_ops ;
 int co_random_ops ;
 int co_session_ops ;
 int co_sign_ops ;
 int co_verify_ops ;

__attribute__((used)) static void
copy_ops_vector_v1(crypto_ops_t *src_ops, crypto_ops_t *dst_ops)
{
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_control_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_digest_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_cipher_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_mac_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_sign_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_verify_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_dual_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_dual_cipher_mac_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_random_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_session_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_object_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_key_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_provider_ops);
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_ctx_ops);
}
