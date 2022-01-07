
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ cm_param_len; int * cm_param; int cm_type; } ;
typedef TYPE_2__ crypto_mechanism_t ;
struct TYPE_11__ {int* ck_data; int ck_length; int ck_format; } ;
typedef TYPE_3__ crypto_key_t ;
struct TYPE_9__ {char* iov_base; int iov_len; } ;
struct TYPE_12__ {int cd_length; TYPE_1__ cd_raw; scalar_t__ cd_offset; void* cd_format; } ;
typedef TYPE_4__ crypto_data_t ;
typedef int crypto_context_t ;


 int CRYPTO_BYTES2BITS (int) ;
 void* CRYPTO_DATA_RAW ;
 int CRYPTO_KEY_RAW ;
 int CRYPTO_SUCCESS ;
 int EINVAL ;
 int EIO ;
 int SET_ERROR (int ) ;
 int SHA512_DIGEST_LENGTH ;
 int SUN_CKM_SHA512_HMAC ;
 int bcopy (int*,int*,int) ;
 int crypto_mac_final (int ,TYPE_4__*,int *) ;
 int crypto_mac_init (TYPE_2__*,TYPE_3__*,int *,int *,int *) ;
 int crypto_mac_update (int ,TYPE_4__*,int *) ;
 int crypto_mech2id (int ) ;

__attribute__((used)) static int
hkdf_sha512_expand(uint8_t *extract_key, uint8_t *info, uint_t info_len,
    uint8_t *out_buf, uint_t out_len)
{
 int ret;
 crypto_mechanism_t mech;
 crypto_context_t ctx;
 crypto_key_t key;
 crypto_data_t T_cd, info_cd, c_cd;
 uint_t i, T_len = 0, pos = 0;
 uint8_t c;
 uint_t N = (out_len + SHA512_DIGEST_LENGTH) / SHA512_DIGEST_LENGTH;
 uint8_t T[SHA512_DIGEST_LENGTH];

 if (N > 255)
  return (SET_ERROR(EINVAL));


 mech.cm_type = crypto_mech2id(SUN_CKM_SHA512_HMAC);
 mech.cm_param = ((void*)0);
 mech.cm_param_len = 0;


 key.ck_format = CRYPTO_KEY_RAW;
 key.ck_length = CRYPTO_BYTES2BITS(SHA512_DIGEST_LENGTH);
 key.ck_data = extract_key;


 T_cd.cd_format = CRYPTO_DATA_RAW;
 T_cd.cd_offset = 0;
 T_cd.cd_raw.iov_base = (char *)T;

 c_cd.cd_format = CRYPTO_DATA_RAW;
 c_cd.cd_offset = 0;
 c_cd.cd_length = 1;
 c_cd.cd_raw.iov_base = (char *)&c;
 c_cd.cd_raw.iov_len = c_cd.cd_length;

 info_cd.cd_format = CRYPTO_DATA_RAW;
 info_cd.cd_offset = 0;
 info_cd.cd_length = info_len;
 info_cd.cd_raw.iov_base = (char *)info;
 info_cd.cd_raw.iov_len = info_cd.cd_length;

 for (i = 1; i <= N; i++) {
  c = i;

  T_cd.cd_length = T_len;
  T_cd.cd_raw.iov_len = T_cd.cd_length;

  ret = crypto_mac_init(&mech, &key, ((void*)0), &ctx, ((void*)0));
  if (ret != CRYPTO_SUCCESS)
   return (SET_ERROR(EIO));

  ret = crypto_mac_update(ctx, &T_cd, ((void*)0));
  if (ret != CRYPTO_SUCCESS)
   return (SET_ERROR(EIO));

  ret = crypto_mac_update(ctx, &info_cd, ((void*)0));
  if (ret != CRYPTO_SUCCESS)
   return (SET_ERROR(EIO));

  ret = crypto_mac_update(ctx, &c_cd, ((void*)0));
  if (ret != CRYPTO_SUCCESS)
   return (SET_ERROR(EIO));

  T_len = SHA512_DIGEST_LENGTH;
  T_cd.cd_length = T_len;
  T_cd.cd_raw.iov_len = T_cd.cd_length;

  ret = crypto_mac_final(ctx, &T_cd, ((void*)0));
  if (ret != CRYPTO_SUCCESS)
   return (SET_ERROR(EIO));

  bcopy(T, out_buf + pos,
      (i != N) ? SHA512_DIGEST_LENGTH : (out_len - pos));
  pos += SHA512_DIGEST_LENGTH;
 }

 return (0);
}
