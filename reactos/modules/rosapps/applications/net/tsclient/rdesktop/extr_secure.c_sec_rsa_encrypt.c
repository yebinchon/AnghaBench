
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_bin2bn (int *,int,int *) ;
 int BN_bn2bin (int *,int *) ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_init (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int SEC_EXPONENT_SIZE ;
 int SEC_MAX_MODULUS_SIZE ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,scalar_t__) ;
 int reverse (int *,int) ;

__attribute__((used)) static void
sec_rsa_encrypt(uint8 * out, uint8 * in, int len, uint32 modulus_size, uint8 * modulus,
  uint8 * exponent)
{
 BN_CTX *ctx;
 BIGNUM mod, exp, x, y;
 uint8 inr[SEC_MAX_MODULUS_SIZE];
 int outlen;

 reverse(modulus, modulus_size);
 reverse(exponent, SEC_EXPONENT_SIZE);
 memcpy(inr, in, len);
 reverse(inr, len);

 ctx = BN_CTX_new();
 BN_init(&mod);
 BN_init(&exp);
 BN_init(&x);
 BN_init(&y);

 BN_bin2bn(modulus, modulus_size, &mod);
 BN_bin2bn(exponent, SEC_EXPONENT_SIZE, &exp);
 BN_bin2bn(inr, len, &x);
 BN_mod_exp(&y, &x, &exp, &mod, ctx);
 outlen = BN_bn2bin(&y, out);
 reverse(out, outlen);
 if ((uint32)outlen < modulus_size)
  memset(out + outlen, 0, modulus_size - outlen);

 BN_free(&y);
 BN_clear_free(&x);
 BN_free(&exp);
 BN_free(&mod);
 BN_CTX_free(ctx);
}
