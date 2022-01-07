
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_snprintf (char*,int,char*,char const*,float,...) ;

void
pdf_print_default_appearance(fz_context *ctx, char *buf, int nbuf, const char *font, float size, const float color[3])
{
 if (color[0] > 0 || color[1] > 0 || color[2] > 0)
  fz_snprintf(buf, nbuf, "/%s %g Tf %g %g %g rg", font, size, color[0], color[1], color[2]);
 else
  fz_snprintf(buf, nbuf, "/%s %g Tf", font, size);
}
