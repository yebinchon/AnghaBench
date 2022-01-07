
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ shaper_handle; int (* destroy ) (int *,scalar_t__) ;} ;
struct TYPE_9__ {TYPE_1__ shaper_data; struct TYPE_9__* advance_cache; struct TYPE_9__* width_table; struct TYPE_9__* bbox_table; int buffer; struct TYPE_9__** encoding_cache; int name; scalar_t__ ft_face; struct TYPE_9__* t3flags; struct TYPE_9__* t3widths; struct TYPE_9__* t3lists; struct TYPE_9__* t3procs; int refs; } ;
typedef TYPE_2__ fz_font ;
typedef int fz_context ;
typedef int FT_Face ;


 int FT_Done_Face (int ) ;
 int FZ_LOCK_FREETYPE ;
 int free_resources (int *,TYPE_2__*) ;
 int ft_error_string (int) ;
 int fz_drop_buffer (int *,int ) ;
 int fz_drop_display_list (int *,TYPE_2__) ;
 int fz_drop_freetype (int *) ;
 int fz_drop_imp (int *,TYPE_2__*,int *) ;
 int fz_free (int *,TYPE_2__*) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;
 int fz_warn (int *,char*,int ,int ) ;
 int stub1 (int *,scalar_t__) ;

void
fz_drop_font(fz_context *ctx, fz_font *font)
{
 int fterr;
 int i;

 if (!fz_drop_imp(ctx, font, &font->refs))
  return;

 if (font->t3lists)
 {
  free_resources(ctx, font);
  for (i = 0; i < 256; i++)
   fz_drop_display_list(ctx, font->t3lists[i]);
  fz_free(ctx, font->t3procs);
  fz_free(ctx, font->t3lists);
  fz_free(ctx, font->t3widths);
  fz_free(ctx, font->t3flags);
 }

 if (font->ft_face)
 {
  fz_lock(ctx, FZ_LOCK_FREETYPE);
  fterr = FT_Done_Face((FT_Face)font->ft_face);
  fz_unlock(ctx, FZ_LOCK_FREETYPE);
  if (fterr)
   fz_warn(ctx, "FT_Done_Face(%s): %s", font->name, ft_error_string(fterr));
  fz_drop_freetype(ctx);
 }

 for (i = 0; i < 256; ++i)
  fz_free(ctx, font->encoding_cache[i]);

 fz_drop_buffer(ctx, font->buffer);
 fz_free(ctx, font->bbox_table);
 fz_free(ctx, font->width_table);
 fz_free(ctx, font->advance_cache);
 if (font->shaper_data.destroy && font->shaper_data.shaper_handle)
 {
  font->shaper_data.destroy(ctx, font->shaper_data.shaper_handle);
 }
 fz_free(ctx, font);
}
