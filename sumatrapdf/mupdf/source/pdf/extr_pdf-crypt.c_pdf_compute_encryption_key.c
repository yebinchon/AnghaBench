
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; unsigned char* o; int r; int encrypt_metadata; int id; scalar_t__ p; } ;
typedef TYPE_1__ pdf_crypt ;
typedef unsigned char p ;
typedef int fz_md5 ;
typedef int fz_context ;


 int fz_clampi (int,int ,int) ;
 int fz_md5_final (int *,unsigned char*) ;
 int fz_md5_init (int *) ;
 int fz_md5_update (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* padding ;
 scalar_t__ pdf_to_str_buf (int *,int ) ;
 int pdf_to_str_len (int *,int ) ;

__attribute__((used)) static void
pdf_compute_encryption_key(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen, unsigned char *key)
{
 unsigned char buf[32];
 unsigned int p;
 int i, n;
 fz_md5 md5;

 n = fz_clampi(crypt->length / 8, 0, 16);


 if (pwlen > 32)
  pwlen = 32;
 memcpy(buf, password, pwlen);
 memcpy(buf + pwlen, padding, 32 - pwlen);


 fz_md5_init(&md5);
 fz_md5_update(&md5, buf, 32);


 fz_md5_update(&md5, crypt->o, 32);


 p = (unsigned int) crypt->p;
 buf[0] = (p) & 0xFF;
 buf[1] = (p >> 8) & 0xFF;
 buf[2] = (p >> 16) & 0xFF;
 buf[3] = (p >> 24) & 0xFF;
 fz_md5_update(&md5, buf, 4);


 fz_md5_update(&md5, (unsigned char *)pdf_to_str_buf(ctx, crypt->id), pdf_to_str_len(ctx, crypt->id));


 if (crypt->r >= 4)
 {
  if (!crypt->encrypt_metadata)
  {
   buf[0] = 0xFF;
   buf[1] = 0xFF;
   buf[2] = 0xFF;
   buf[3] = 0xFF;
   fz_md5_update(&md5, buf, 4);
  }
 }


 fz_md5_final(&md5, buf);


 if (crypt->r >= 3)
 {
  for (i = 0; i < 50; i++)
  {
   fz_md5_init(&md5);
   fz_md5_update(&md5, buf, n);
   fz_md5_final(&md5, buf);
  }
 }


 memcpy(key, buf, n);
}
