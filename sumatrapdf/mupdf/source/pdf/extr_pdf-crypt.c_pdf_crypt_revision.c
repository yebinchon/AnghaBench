
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int r; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_context ;



int pdf_crypt_revision(fz_context *ctx, pdf_crypt *crypt)
{
 if (crypt)
  return crypt->r;
 return 0;
}
