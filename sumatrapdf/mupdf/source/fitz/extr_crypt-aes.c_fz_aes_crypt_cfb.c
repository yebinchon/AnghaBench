
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aes_context ;


 int FZ_AES_DECRYPT ;
 int FZ_AES_ENCRYPT ;
 int fz_aes_crypt_ecb (int *,int ,unsigned char*,unsigned char*) ;

void fz_aes_crypt_cfb( aes_context *ctx,
 int mode,
 int length,
 int *iv_off,
 unsigned char iv[16],
 const unsigned char *input,
 unsigned char *output )
{
 int c, n = *iv_off;

 if( mode == FZ_AES_DECRYPT )
 {
  while( length-- )
  {
   if( n == 0 )
    fz_aes_crypt_ecb( ctx, FZ_AES_ENCRYPT, iv, iv );

   c = *input++;
   *output++ = (unsigned char)( c ^ iv[n] );
   iv[n] = (unsigned char) c;

   n = (n + 1) & 0x0F;
  }
 }
 else
 {
  while( length-- )
  {
   if( n == 0 )
    fz_aes_crypt_ecb( ctx, FZ_AES_ENCRYPT, iv, iv );

   iv[n] = *output++ = (unsigned char)( iv[n] ^ *input++ );

   n = (n + 1) & 0x0F;
  }
 }

 *iv_off = n;
}
