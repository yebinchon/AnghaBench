
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ method; } ;
struct TYPE_5__ {TYPE_1__ strf; } ;
typedef TYPE_2__ pdf_crypt ;
typedef int fz_context ;


 scalar_t__ PDF_CRYPT_AESV2 ;
 scalar_t__ PDF_CRYPT_AESV3 ;

int pdf_encrypted_len(fz_context *ctx, pdf_crypt *crypt, int num, int gen, int len)
{
 if (crypt == ((void*)0))
  return len;

 if (crypt->strf.method == PDF_CRYPT_AESV2 || crypt->strf.method == PDF_CRYPT_AESV3)
 {
  len += 16;
  if ((len & 15) == 0)
   len += 16;
  len = (len + 15) & ~15;
 }

 return len;
}
