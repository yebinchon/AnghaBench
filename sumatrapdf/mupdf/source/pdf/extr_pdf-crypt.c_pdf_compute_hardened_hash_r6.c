
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_sha512 ;
typedef int fz_sha384 ;
typedef int fz_sha256 ;
typedef int fz_context ;
typedef int fz_aes ;
typedef int data ;


 int FZ_AES_ENCRYPT ;
 int FZ_ERROR_GENERIC ;
 int fz_aes_crypt_cbc (int *,int ,size_t,unsigned char*,unsigned char*,unsigned char*) ;
 scalar_t__ fz_aes_setkey_enc (int *,unsigned char*,int) ;
 int fz_sha256_final (int *,unsigned char*) ;
 int fz_sha256_init (int *) ;
 int fz_sha256_update (int *,unsigned char*,size_t) ;
 int fz_sha384_final (int *,unsigned char*) ;
 int fz_sha384_init (int *) ;
 int fz_sha384_update (int *,unsigned char*,size_t) ;
 int fz_sha512_final (int *,unsigned char*) ;
 int fz_sha512_init (int *) ;
 int fz_sha512_update (int *,unsigned char*,size_t) ;
 int fz_throw (int *,int ,char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void
pdf_compute_hardened_hash_r6(fz_context *ctx, unsigned char *password, size_t pwlen, unsigned char salt[8], unsigned char *ownerkey, unsigned char hash[32])
{
 unsigned char data[(128 + 64 + 48) * 64];
 unsigned char block[64];
 int block_size = 32;
 size_t data_len = 0;
 int i, j, sum;

 fz_sha256 sha256;
 fz_sha384 sha384;
 fz_sha512 sha512;
 fz_aes aes;


 fz_sha256_init(&sha256);
 fz_sha256_update(&sha256, password, pwlen);
 fz_sha256_update(&sha256, salt, 8);
 if (ownerkey)
  fz_sha256_update(&sha256, ownerkey, 48);
 fz_sha256_final(&sha256, block);

 for (i = 0; i < 64 || i < data[data_len * 64 - 1] + 32; i++)
 {

  memcpy(data, password, pwlen);
  memcpy(data + pwlen, block, block_size);
  if (ownerkey)
   memcpy(data + pwlen + block_size, ownerkey, 48);
  data_len = pwlen + block_size + (ownerkey ? 48 : 0);
  for (j = 1; j < 64; j++)
   memcpy(data + j * data_len, data, data_len);


  if (fz_aes_setkey_enc(&aes, block, 128))
   fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", 128);
  fz_aes_crypt_cbc(&aes, FZ_AES_ENCRYPT, data_len * 64, block + 16, data, data);


  for (j = 0, sum = 0; j < 16; j++)
   sum += data[j];


  block_size = 32 + (sum % 3) * 16;
  switch (block_size)
  {
  case 32:
   fz_sha256_init(&sha256);
   fz_sha256_update(&sha256, data, data_len * 64);
   fz_sha256_final(&sha256, block);
   break;
  case 48:
   fz_sha384_init(&sha384);
   fz_sha384_update(&sha384, data, data_len * 64);
   fz_sha384_final(&sha384, block);
   break;
  case 64:
   fz_sha512_init(&sha512);
   fz_sha512_update(&sha512, data, data_len * 64);
   fz_sha512_final(&sha512, block);
   break;
  }
 }

 memset(data, 0, sizeof(data));
 memcpy(hash, block, 32);
}
