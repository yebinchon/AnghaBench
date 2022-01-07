
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int hscale; int vscale; int bits; int scale; } ;
typedef TYPE_1__ fz_aa_context ;


 int fz_aa_bits ;
 int fz_set_rasterizer_text_aa_level (int *,TYPE_1__*,int) ;
 int fz_warn (int *,char*,...) ;

void
fz_set_rasterizer_graphics_aa_level(fz_context *ctx, fz_aa_context *aa, int level)
{
 if (level == 9 || level == 10)
 {
  aa->hscale = 1;
  aa->vscale = 1;
  aa->bits = level;
 }
 else if (level > 6)
 {
  aa->hscale = 17;
  aa->vscale = 15;
  aa->bits = 8;
 }
 else if (level > 4)
 {
  aa->hscale = 8;
  aa->vscale = 8;
  aa->bits = 6;
 }
 else if (level > 2)
 {
  aa->hscale = 5;
  aa->vscale = 3;
  aa->bits = 4;
 }
 else if (level > 0)
 {
  aa->hscale = 2;
  aa->vscale = 2;
  aa->bits = 2;
 }
 else
 {
  aa->hscale = 1;
  aa->vscale = 1;
  aa->bits = 0;
 }
 aa->scale = 0xFF00 / (aa->hscale * aa->vscale);
 fz_set_rasterizer_text_aa_level(ctx, aa, level);

}
