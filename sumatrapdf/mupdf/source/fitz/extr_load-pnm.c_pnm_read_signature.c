
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static const unsigned char *
pnm_read_signature(fz_context *ctx, const unsigned char *p, const unsigned char *e, char *signature)
{
 if (e - p < 2)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot parse magic number in pnm image");
 if (p[0] != 'P' || p[1] < '1' || p[1] > '7')
  fz_throw(ctx, FZ_ERROR_GENERIC, "expected signature in pnm image");

 signature[0] = *p++;
 signature[1] = *p++;
 return p;
}
