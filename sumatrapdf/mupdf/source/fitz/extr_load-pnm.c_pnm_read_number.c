
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static const unsigned char *
pnm_read_number(fz_context *ctx, const unsigned char *p, const unsigned char *e, int *number)
{
 if (e - p < 1)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot parse number in pnm image");
 if (*p < '0' || *p > '9')
  fz_throw(ctx, FZ_ERROR_GENERIC, "expected numeric field in pnm image");

 while (p < e && *p >= '0' && *p <= '9')
 {
  if (number)
   *number = *number * 10 + *p - '0';
  p++;
 }

 return p;
}
