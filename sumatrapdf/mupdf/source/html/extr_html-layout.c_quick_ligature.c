
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int glyph_count; TYPE_1__* glyph_info; int font; } ;
typedef TYPE_2__ string_walker ;
typedef int fz_context ;
struct TYPE_8__ {int is_mono; } ;
struct TYPE_6__ {float codepoint; } ;


 scalar_t__ fz_encode_character (int *,int ,int) ;
 TYPE_5__* fz_font_flags (int ) ;
 int quick_ligature_mov (int *,TYPE_2__*,unsigned int,int,int) ;

__attribute__((used)) static int quick_ligature(fz_context *ctx, string_walker *walker, unsigned int i)
{
 if (walker->glyph_info[i].codepoint == 'f' && i + 1 < walker->glyph_count && !fz_font_flags(walker->font)->is_mono)
 {
  if (walker->glyph_info[i+1].codepoint == 'f')
  {
   if (i + 2 < walker->glyph_count && walker->glyph_info[i+2].codepoint == 'i')
   {
    if (fz_encode_character(ctx, walker->font, 0xFB03))
     return quick_ligature_mov(ctx, walker, i, 2, 0xFB03);
   }
   if (i + 2 < walker->glyph_count && walker->glyph_info[i+2].codepoint == 'l')
   {
    if (fz_encode_character(ctx, walker->font, 0xFB04))
     return quick_ligature_mov(ctx, walker, i, 2, 0xFB04);
   }
   if (fz_encode_character(ctx, walker->font, 0xFB00))
    return quick_ligature_mov(ctx, walker, i, 1, 0xFB00);
  }
  if (walker->glyph_info[i+1].codepoint == 'i')
  {
   if (fz_encode_character(ctx, walker->font, 0xFB01))
    return quick_ligature_mov(ctx, walker, i, 1, 0xFB01);
  }
  if (walker->glyph_info[i+1].codepoint == 'l')
  {
   if (fz_encode_character(ctx, walker->font, 0xFB02))
    return quick_ligature_mov(ctx, walker, i, 1, 0xFB02);
  }
 }
 return walker->glyph_info[i].codepoint;
}
