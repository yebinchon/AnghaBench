
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_4__ {char* iov_base; int iov_len; } ;
struct TYPE_5__ {int cd_length; TYPE_1__ cd_raw; scalar_t__ cd_offset; int cd_format; } ;
typedef TYPE_2__ crypto_data_t ;
typedef int crypto_context_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int blkptr_auth_buf_t ;


 int CRYPTO_DATA_RAW ;
 int CRYPTO_SUCCESS ;
 int EIO ;
 int SET_ERROR (int ) ;
 int crypto_mac_update (int ,TYPE_2__*,int *) ;
 int zio_crypt_bp_auth_init (int ,int ,int *,int *,int *) ;

__attribute__((used)) static int
zio_crypt_bp_do_hmac_updates(crypto_context_t ctx, uint64_t version,
    boolean_t should_bswap, blkptr_t *bp)
{
 int ret;
 uint_t bab_len;
 blkptr_auth_buf_t bab;
 crypto_data_t cd;

 zio_crypt_bp_auth_init(version, should_bswap, bp, &bab, &bab_len);
 cd.cd_format = CRYPTO_DATA_RAW;
 cd.cd_offset = 0;
 cd.cd_length = bab_len;
 cd.cd_raw.iov_base = (char *)&bab;
 cd.cd_raw.iov_len = cd.cd_length;

 ret = crypto_mac_update(ctx, &cd, ((void*)0));
 if (ret != CRYPTO_SUCCESS) {
  ret = SET_ERROR(EIO);
  goto error;
 }

 return (0);

error:
 return (ret);
}
