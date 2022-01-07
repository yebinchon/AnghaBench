
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; scalar_t__ encrypt_metadata; int p; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int iv ;
typedef int fz_context ;
typedef int fz_aes ;


 int FZ_AES_ENCRYPT ;
 int FZ_ERROR_GENERIC ;
 int fz_aes_crypt_cbc (int *,int ,int,unsigned char*,unsigned char*,unsigned char*) ;
 scalar_t__ fz_aes_setkey_enc (int *,int ,int) ;
 int fz_memrnd (int *,unsigned char*,int) ;
 int fz_throw (int *,int ,char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static void
pdf_compute_permissions_r6(fz_context *ctx, pdf_crypt *crypt, unsigned char *output)
{
 unsigned char buf[16];
 unsigned char iv[16];
 fz_aes aes;


 memcpy(buf, (unsigned char *) &crypt->p, 4);
 memset(&buf[4], 0xff, 4);


 buf[8] = crypt->encrypt_metadata ? 'T' : 'F';


 buf[9] = 'a';
 buf[10] = 'd';
 buf[11] = 'b';


 fz_memrnd(ctx, &buf[12], 4);


 memset(iv, 0, sizeof(iv));
 if (fz_aes_setkey_enc(&aes, crypt->key, 256))
  fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=256)");
 fz_aes_crypt_cbc(&aes, FZ_AES_ENCRYPT, 16, iv, buf, output);
}
