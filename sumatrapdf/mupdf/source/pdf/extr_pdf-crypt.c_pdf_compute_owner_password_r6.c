
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int u; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int iv ;
typedef int fz_context ;
typedef int fz_aes ;


 int FZ_AES_ENCRYPT ;
 int FZ_ERROR_GENERIC ;
 int fz_aes_crypt_cbc (int *,int ,int,unsigned char*,int ,unsigned char*) ;
 scalar_t__ fz_aes_setkey_enc (int *,unsigned char*,int) ;
 int fz_memrnd (int *,unsigned char*,int ) ;
 int fz_throw (int *,int ,char*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int nelem (unsigned char*) ;
 int pdf_compute_hardened_hash_r6 (int *,unsigned char*,size_t,unsigned char*,int ,unsigned char*) ;

__attribute__((used)) static void
pdf_compute_owner_password_r6(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, unsigned char *outputpw, unsigned char *outputencryption)
{
 unsigned char validationsalt[8];
 unsigned char keysalt[8];
 unsigned char hash[32];
 unsigned char iv[16];
 fz_aes aes;


 fz_memrnd(ctx, validationsalt, nelem(validationsalt));
 fz_memrnd(ctx, keysalt, nelem(keysalt));


 pdf_compute_hardened_hash_r6(ctx, password, pwlen, validationsalt, crypt->u, outputpw);
 memcpy(outputpw + 32, validationsalt, nelem(validationsalt));
 memcpy(outputpw + 40, keysalt, nelem(keysalt));


 pdf_compute_hardened_hash_r6(ctx, password, pwlen, keysalt, crypt->u, hash);


 memset(iv, 0, sizeof(iv));
 if (fz_aes_setkey_enc(&aes, hash, 256))
  fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=256)");
 fz_aes_crypt_cbc(&aes, FZ_AES_ENCRYPT, 32, iv, crypt->key, outputencryption);
}
