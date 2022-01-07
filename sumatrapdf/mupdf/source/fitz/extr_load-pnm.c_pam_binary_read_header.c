
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {scalar_t__ tupletype; scalar_t__ maxval; scalar_t__ depth; scalar_t__ height; scalar_t__ width; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;





 int TOKEN_UNKNOWN ;

 int fz_throw (int *,int ,char*) ;
 unsigned char* pnm_read_number (int *,unsigned char const*,unsigned char const*,scalar_t__*) ;
 unsigned char* pnm_read_token (int *,unsigned char const*,unsigned char const*,int*) ;
 unsigned char* pnm_read_tupletype (int *,unsigned char const*,unsigned char const*,scalar_t__*) ;
 unsigned char* pnm_read_white (int *,unsigned char const*,unsigned char const*,int ) ;

__attribute__((used)) static const unsigned char *
pam_binary_read_header(fz_context *ctx, struct info *pnm, const unsigned char *p, const unsigned char *e)
{
 int token = TOKEN_UNKNOWN;

 pnm->width = 0;
 pnm->height = 0;
 pnm->depth = 0;
 pnm->maxval = 0;
 pnm->tupletype = 0;

 while (p < e && token != 132)
 {
  p = pnm_read_token(ctx, p, e, &token);
  p = pnm_read_white(ctx, p, e, 0);
  switch (token)
  {
  case 128: p = pnm_read_number(ctx, p, e, &pnm->width); break;
  case 131: p = pnm_read_number(ctx, p, e, &pnm->height); break;
  case 133: p = pnm_read_number(ctx, p, e, &pnm->depth); break;
  case 130: p = pnm_read_number(ctx, p, e, &pnm->maxval); break;
  case 129: p = pnm_read_tupletype(ctx, p, e, &pnm->tupletype); break;
  case 132: break;
  default: fz_throw(ctx, FZ_ERROR_GENERIC, "unknown header token in pnm image");
  }

  if (token != 132)
   p = pnm_read_white(ctx, p, e, 0);
 }

 return p;
}
