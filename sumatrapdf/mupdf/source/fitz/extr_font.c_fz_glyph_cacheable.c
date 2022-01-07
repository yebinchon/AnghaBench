
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* t3flags; int glyph_count; int t3procs; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int FZ_DEVFLAG_UNCACHEABLE ;

int fz_glyph_cacheable(fz_context *ctx, fz_font *font, int gid)
{
 if (!font->t3procs || !font->t3flags || gid < 0 || gid >= font->glyph_count)
  return 1;
 return (font->t3flags[gid] & FZ_DEVFLAG_UNCACHEABLE) == 0;
}
