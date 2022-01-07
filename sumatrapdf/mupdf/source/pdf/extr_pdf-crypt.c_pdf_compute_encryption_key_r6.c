
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int ue; int oe; int * u; int * o; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int iv ;
typedef int fz_context ;
typedef int fz_aes ;


 int FZ_AES_DECRYPT ;
 int FZ_ERROR_GENERIC ;
 int fz_aes_crypt_cbc (int *,int ,int,unsigned char*,int ,int ) ;
 scalar_t__ fz_aes_setkey_dec (int *,unsigned char*,int) ;
 int fz_throw (int *,int ,char*) ;
 int memset (unsigned char*,int ,int) ;
 int pdf_compute_hardened_hash_r6 (int *,unsigned char*,size_t,int *,int *,unsigned char*) ;

__attribute__((used)) static void
pdf_compute_encryption_key_r6(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, int ownerkey, unsigned char *validationkey)
{
 unsigned char hash[32];
 unsigned char iv[16];
 fz_aes aes;

 if (pwlen > 127)
  pwlen = 127;

 pdf_compute_hardened_hash_r6(ctx, password, pwlen,
  (ownerkey ? crypt->o : crypt->u) + 32,
  ownerkey ? crypt->u : ((void*)0), validationkey);
 pdf_compute_hardened_hash_r6(ctx, password, pwlen,
  (ownerkey ? crypt->o : crypt->u) + 40,
  (ownerkey ? crypt->u : ((void*)0)),
  hash);

 memset(iv, 0, sizeof(iv));
 if (fz_aes_setkey_dec(&aes, hash, 256))
  fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=256)");
 fz_aes_crypt_cbc(&aes, FZ_AES_DECRYPT, 32, iv, ownerkey ? crypt->oe : crypt->ue, crypt->key);
}
