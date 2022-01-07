
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int method; } ;
struct TYPE_5__ {TYPE_1__ strf; } ;
typedef TYPE_2__ pdf_crypt ;
typedef int fz_context ;
char *
pdf_crypt_method(fz_context *ctx, pdf_crypt *crypt)
{
 if (crypt)
 {
  switch (crypt->strf.method)
  {
  case 130: return "None";
  case 129: return "RC4";
  case 132: return "AES";
  case 131: return "AES";
  case 128: return "Unknown";
  }
 }
 return "None";
}
