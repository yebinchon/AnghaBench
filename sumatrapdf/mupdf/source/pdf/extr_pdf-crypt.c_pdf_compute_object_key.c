
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ method; } ;
typedef TYPE_1__ pdf_crypt_filter ;
struct TYPE_6__ {int length; scalar_t__ v; unsigned char* key; } ;
typedef TYPE_2__ pdf_crypt ;
typedef unsigned char num ;
typedef unsigned char gen ;
typedef int fz_md5 ;


 scalar_t__ PDF_CRYPT_AESV2 ;
 scalar_t__ PDF_CRYPT_AESV3 ;
 int fz_md5_final (int *,unsigned char*) ;
 int fz_md5_init (int *) ;
 int fz_md5_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int
pdf_compute_object_key(pdf_crypt *crypt, pdf_crypt_filter *cf, int num, int gen, unsigned char *key, int max_len)
{
 fz_md5 md5;
 unsigned char message[5];
 int key_len = crypt->length / 8;

 if (key_len > max_len)
  key_len = max_len;




 if (crypt->v == 0 || cf->method == PDF_CRYPT_AESV3)
 {
  memcpy(key, crypt->key, key_len);
  return key_len;
 }

 fz_md5_init(&md5);
 fz_md5_update(&md5, crypt->key, key_len);
 message[0] = (num) & 0xFF;
 message[1] = (num >> 8) & 0xFF;
 message[2] = (num >> 16) & 0xFF;
 message[3] = (gen) & 0xFF;
 message[4] = (gen >> 8) & 0xFF;
 fz_md5_update(&md5, message, 5);

 if (cf->method == PDF_CRYPT_AESV2)
  fz_md5_update(&md5, (unsigned char *)"sAlT", 4);

 fz_md5_final(&md5, key);

 if (key_len + 5 > 16)
  return 16;
 return key_len + 5;
}
