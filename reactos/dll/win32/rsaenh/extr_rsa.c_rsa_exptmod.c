
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int N; int e; int q; int p; int qP; int dQ; int dP; } ;
typedef TYPE_1__ rsa_key ;
typedef int mp_int ;


 int CRYPT_BUFFER_OVERFLOW ;
 int CRYPT_OK ;
 int CRYPT_PK_INVALID_SIZE ;
 int CRYPT_PK_INVALID_TYPE ;
 int CRYPT_PK_NOT_PRIVATE ;
 scalar_t__ MP_LT ;
 int MP_OKAY ;
 int PK_PRIVATE ;
 int PK_PUBLIC ;
 int memset (unsigned char*,int ,unsigned long) ;
 int mp_add (int *,int *,int *) ;
 int mp_clear_multi (int *,int *,int *,int *) ;
 scalar_t__ mp_cmp (int *,int *) ;
 int mp_exptmod (int *,int *,int *,int *) ;
 int mp_init_multi (int *,int *,int *,int *) ;
 int mp_mul (int *,int *,int *) ;
 int mp_mulmod (int *,int *,int *,int *) ;
 int mp_read_unsigned_bin (int *,unsigned char const*,int) ;
 int mp_sub (int *,int *,int *) ;
 int mp_to_unsigned_bin (int *,unsigned char*) ;
 unsigned long mp_unsigned_bin_size (int *) ;
 int mpi_to_ltc_error (int) ;

int rsa_exptmod(const unsigned char *in, unsigned long inlen,
                      unsigned char *out, unsigned long *outlen, int which,
                      rsa_key *key)
{
   mp_int tmp, tmpa, tmpb;
   unsigned long x;
   int err;


   if (which == PK_PRIVATE && (key->type != PK_PRIVATE)) {
      return CRYPT_PK_NOT_PRIVATE;
   }


   if (which != PK_PRIVATE && which != PK_PUBLIC) {
      return CRYPT_PK_INVALID_TYPE;
   }


   if ((err = mp_init_multi(&tmp, &tmpa, &tmpb, ((void*)0))) != MP_OKAY) { return mpi_to_ltc_error(err); }
   if ((err = mp_read_unsigned_bin(&tmp, in, (int)inlen)) != MP_OKAY) { goto error; }


   if (mp_cmp(&key->N, &tmp) == MP_LT) {
      err = CRYPT_PK_INVALID_SIZE;
      goto done;
   }


   if (which == PK_PRIVATE) {

      if ((err = mpi_to_ltc_error(mp_exptmod(&tmp, &key->dP, &key->p, &tmpa))) != MP_OKAY) { goto error; }


      if ((err = mpi_to_ltc_error(mp_exptmod(&tmp, &key->dQ, &key->q, &tmpb))) != MP_OKAY) { goto error; }


      if ((err = mp_sub(&tmpa, &tmpb, &tmp)) != MP_OKAY) { goto error; }
      if ((err = mp_mulmod(&tmp, &key->qP, &key->p, &tmp)) != MP_OKAY) { goto error; }


      if ((err = mp_mul(&tmp, &key->q, &tmp)) != MP_OKAY) { goto error; }
      if ((err = mp_add(&tmp, &tmpb, &tmp)) != MP_OKAY) { goto error; }
   } else {

      if ((err = mp_exptmod(&tmp, &key->e, &key->N, &tmp)) != MP_OKAY) { goto error; }
   }


   x = (unsigned long)mp_unsigned_bin_size(&key->N);
   if (x > *outlen) {
      err = CRYPT_BUFFER_OVERFLOW;
      goto done;
   }
   *outlen = x;


   memset(out, 0, x);
   if ((err = mp_to_unsigned_bin(&tmp, out+(x-mp_unsigned_bin_size(&tmp)))) != MP_OKAY) { goto error; }


   err = CRYPT_OK;
   goto done;
error:
   err = mpi_to_ltc_error(err);
done:
   mp_clear_multi(&tmp, &tmpa, &tmpb, ((void*)0));
   return err;
}
