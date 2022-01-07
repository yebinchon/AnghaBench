
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ iseol (unsigned char const) ;
 scalar_t__ iswhite (unsigned char const) ;
 scalar_t__ iswhiteeol (unsigned char const) ;

__attribute__((used)) static const unsigned char *
pnm_read_white(fz_context *ctx, const unsigned char *p, const unsigned char *e, int single_line)
{
 if (e - p < 1)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot parse whitespace in pnm image");

 if (single_line)
 {
  if (!iswhiteeol(*p) && *p != '#')
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected whitespace/comment in pnm image");
  while (p < e && iswhite(*p))
   p++;

  if (p < e && *p == '#')
   while (p < e && !iseol(*p))
    p++;
  if (p < e && iseol(*p))
   p++;
 }
 else
 {
  if (!iswhiteeol(*p) && *p != '#')
   fz_throw(ctx, FZ_ERROR_GENERIC, "expected whitespace in pnm image");
  while (p < e && iswhiteeol(*p))
   p++;

  while (p < e && *p == '#')
  {
   while (p < e && !iseol(*p))
    p++;

   if (p < e && iseol(*p))
    p++;

   while (p < e && iswhiteeol(*p))
    p++;

   if (p < e && iseol(*p))
    p++;
  }
 }

 return p;
}
