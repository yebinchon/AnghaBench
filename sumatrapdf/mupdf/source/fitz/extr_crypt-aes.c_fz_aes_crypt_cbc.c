
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aes_context ;


 int FZ_AES_DECRYPT ;
 int PADLOCK_ACE ;
 int fz_aes_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 scalar_t__ padlock_supports (int ) ;
 scalar_t__ padlock_xcryptcbc (int *,int,size_t,unsigned char*,unsigned char const*,unsigned char*) ;

void fz_aes_crypt_cbc( aes_context *ctx,
 int mode,
 size_t length,
 unsigned char iv[16],
 const unsigned char *input,
 unsigned char *output )
{
 int i;
 unsigned char temp[16];
 if( mode == FZ_AES_DECRYPT )
 {
  while( length > 0 )
  {
   memcpy( temp, input, 16 );
   fz_aes_crypt_ecb( ctx, mode, input, output );

   for( i = 0; i < 16; i++ )
    output[i] = (unsigned char)( output[i] ^ iv[i] );

   memcpy( iv, temp, 16 );

   input += 16;
   output += 16;
   length -= 16;
  }
 }
 else
 {
  while( length > 0 )
  {
   for( i = 0; i < 16; i++ )
    output[i] = (unsigned char)( input[i] ^ iv[i] );

   fz_aes_crypt_ecb( ctx, mode, output, output );
   memcpy( iv, output, 16 );

   input += 16;
   output += 16;
   length -= 16;
  }
 }
}
