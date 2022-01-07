
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int glyph_count; int * glyph_pos; int * glyph_info; } ;
typedef TYPE_1__ string_walker ;
typedef int fz_context ;



__attribute__((used)) static int quick_ligature_mov(fz_context *ctx, string_walker *walker, unsigned int i, unsigned int n, int unicode)
{
 unsigned int k;
 for (k = i + n + 1; k < walker->glyph_count; ++k)
 {
  walker->glyph_info[k-n] = walker->glyph_info[k];
  walker->glyph_pos[k-n] = walker->glyph_pos[k];
 }
 walker->glyph_count -= n;
 return unicode;
}
