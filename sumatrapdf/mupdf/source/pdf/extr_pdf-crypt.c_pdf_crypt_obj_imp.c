
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {scalar_t__ method; } ;
struct TYPE_5__ {TYPE_1__ strf; } ;
typedef TYPE_2__ pdf_crypt ;
typedef int fz_context ;
typedef int fz_arc4 ;
typedef int fz_aes ;


 int FZ_AES_DECRYPT ;
 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_CRYPT_AESV2 ;
 scalar_t__ PDF_CRYPT_AESV3 ;
 scalar_t__ PDF_CRYPT_RC4 ;
 int fz_aes_crypt_cbc (int *,int ,int,unsigned char*,unsigned char*,unsigned char*) ;
 scalar_t__ fz_aes_setkey_dec (int *,unsigned char*,int) ;
 int fz_arc4_encrypt (int *,unsigned char*,unsigned char*,int) ;
 int fz_arc4_init (int *,unsigned char*,int) ;
 int fz_throw (int *,int ,char*,int) ;
 int fz_warn (int *,char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get_val (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 int pdf_set_str_len (int *,int *,int) ;
 scalar_t__ pdf_to_str_buf (int *,int *) ;
 int pdf_to_str_len (int *,int *) ;

__attribute__((used)) static void
pdf_crypt_obj_imp(fz_context *ctx, pdf_crypt *crypt, pdf_obj *obj, unsigned char *key, int keylen)
{
 unsigned char *s;
 int i, n;

 if (pdf_is_indirect(ctx, obj))
  return;

 if (pdf_is_string(ctx, obj))
 {
  s = (unsigned char *)pdf_to_str_buf(ctx, obj);
  n = pdf_to_str_len(ctx, obj);

  if (crypt->strf.method == PDF_CRYPT_RC4)
  {
   fz_arc4 arc4;
   fz_arc4_init(&arc4, key, keylen);
   fz_arc4_encrypt(&arc4, s, s, n);
  }

  if (crypt->strf.method == PDF_CRYPT_AESV2 || crypt->strf.method == PDF_CRYPT_AESV3)
  {
   if (n == 0)
   {

   }
   else if (n & 15 || n < 32)
    fz_warn(ctx, "invalid string length for aes encryption");
   else
   {
    unsigned char iv[16];
    fz_aes aes;
    memcpy(iv, s, 16);
    if (fz_aes_setkey_dec(&aes, key, keylen * 8))
     fz_throw(ctx, FZ_ERROR_GENERIC, "AES key init failed (keylen=%d)", keylen * 8);
    fz_aes_crypt_cbc(&aes, FZ_AES_DECRYPT, n - 16, iv, s + 16, s);

    if (s[n - 17] < 1 || s[n - 17] > 16)
     fz_warn(ctx, "aes padding out of range");
    else
     pdf_set_str_len(ctx, obj, n - 16 - s[n - 17]);
   }
  }
 }

 else if (pdf_is_array(ctx, obj))
 {
  n = pdf_array_len(ctx, obj);
  for (i = 0; i < n; i++)
  {
   pdf_crypt_obj_imp(ctx, crypt, pdf_array_get(ctx, obj, i), key, keylen);
  }
 }

 else if (pdf_is_dict(ctx, obj))
 {
  n = pdf_dict_len(ctx, obj);
  for (i = 0; i < n; i++)
  {
   pdf_crypt_obj_imp(ctx, crypt, pdf_dict_get_val(ctx, obj, i), key, keylen);
  }
 }
}
