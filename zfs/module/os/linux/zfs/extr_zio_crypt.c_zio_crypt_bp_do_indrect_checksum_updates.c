
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int blkptr_auth_buf_t ;
typedef int SHA2_CTX ;


 int SHA2Update (int *,int *,int ) ;
 int zio_crypt_bp_auth_init (int ,int ,int *,int *,int *) ;

__attribute__((used)) static void
zio_crypt_bp_do_indrect_checksum_updates(SHA2_CTX *ctx, uint64_t version,
    boolean_t should_bswap, blkptr_t *bp)
{
 uint_t bab_len;
 blkptr_auth_buf_t bab;

 zio_crypt_bp_auth_init(version, should_bswap, bp, &bab, &bab_len);
 SHA2Update(ctx, &bab, bab_len);
}
