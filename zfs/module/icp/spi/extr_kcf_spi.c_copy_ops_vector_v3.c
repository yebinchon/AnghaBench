
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_ops_t ;


 int KCF_SPI_COPY_OPS (int *,int *,int ) ;
 int co_nostore_key_ops ;

__attribute__((used)) static void
copy_ops_vector_v3(crypto_ops_t *src_ops, crypto_ops_t *dst_ops)
{
 KCF_SPI_COPY_OPS(src_ops, dst_ops, co_nostore_key_ops);
}
