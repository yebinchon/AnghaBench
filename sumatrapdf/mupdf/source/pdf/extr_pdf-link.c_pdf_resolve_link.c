
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;


 int fz_atoi (char const*) ;
 int fz_warn (int *,char*,char const*) ;
 char* strchr (char const*,char) ;
 char* strrchr (char const*,char) ;

int
pdf_resolve_link(fz_context *ctx, pdf_document *doc, const char *uri, float *xp, float *yp)
{
 if (uri && uri[0] == '#')
 {
  int page = fz_atoi(uri + 1) - 1;
  if (xp || yp)
  {
   const char *x = strchr(uri, ',');
   const char *y = strrchr(uri, ',');
   if (x && y)
   {
    if (xp) *xp = fz_atoi(x + 1);
    if (yp) *yp = fz_atoi(y + 1);
   }
  }
  return page;
 }
 fz_warn(ctx, "unknown link uri '%s'", uri);
 return -1;
}
