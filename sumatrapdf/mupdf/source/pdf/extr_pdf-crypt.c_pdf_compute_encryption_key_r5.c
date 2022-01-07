
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* o; unsigned char* u; int key; int ue; int oe; int length; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_sha256 ;
typedef int fz_context ;
typedef int fz_aes ;
typedef int buffer ;


 int FZ_AES_DECRYPT ;
 int FZ_ERROR_GENERIC ;
 int fz_aes_crypt_cbc (int *,int ,int,unsigned char*,int ,int ) ;
 scalar_t__ fz_aes_setkey_dec (int *,unsigned char*,int ) ;
 int fz_sha256_final (int *,unsigned char*) ;
 int fz_sha256_init (int *) ;
 int fz_sha256_update (int *,unsigned char*,size_t) ;
 int fz_throw (int *,int ,char*,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
pdf_compute_encryption_key_r5(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, int ownerkey, unsigned char *validationkey)
{
 unsigned char buffer[128 + 8 + 48];
 fz_sha256 sha256;
 fz_aes aes;



 if (pwlen > 127)
  pwlen = 127;



 memcpy(buffer, password, pwlen);
 if (ownerkey)
 {
  memcpy(buffer + pwlen, crypt->o + 32, 8);
  memcpy(buffer + pwlen + 8, crypt->u, 48);
 }
 else
  memcpy(buffer + pwlen, crypt->u + 32, 8);

 fz_sha256_init(&sha256);
 fz_sha256_update(&sha256, buffer, pwlen + 8 + (ownerkey ? 48 : 0));
 fz_sha256_final(&sha256, validationkey);



 if (ownerkey)
 {
  memcpy(buffer + pwlen, crypt->o + 40, 8);
  memcpy(buffer + pwlen + 8, crypt->u, 48);
 }
 else
  memcpy(buffer + pwlen, crypt->u + 40, 8);

 fz_sha256_init(&sha256);
 fz_sha256_update(&sha256, buffer, pwlen + 8 + (ownerkey ? 48 : 0));
 fz_sha256_final(&sha256, buffer);


 memset(buffer + 32, 0, sizeof(buffer) - 32);
 if (fz_aes_setkey_dec(&aes, buffer, crypt->length))
  fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", crypt->length);
 fz_aes_crypt_cbc(&aes, FZ_AES_DECRYPT, 32, buffer + 32, ownerkey ? crypt->oe : crypt->ue, crypt->key);
}
