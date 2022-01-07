
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int r; int u; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_context ;


 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int pdf_compute_user_password (int *,TYPE_1__*,unsigned char*,size_t,unsigned char*) ;

__attribute__((used)) static int
pdf_authenticate_user_password(fz_context *ctx, pdf_crypt *crypt, unsigned char *password, size_t pwlen)
{
 unsigned char output[32];
 pdf_compute_user_password(ctx, crypt, password, pwlen, output);
 if (crypt->r == 2 || crypt->r == 5 || crypt->r == 6)
  return memcmp(output, crypt->u, 32) == 0;
 if (crypt->r == 3 || crypt->r == 4)
  return memcmp(output, crypt->u, 16) == 0;
 return 0;
}
