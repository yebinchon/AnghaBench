
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float hadv; float vadv; float vorg; } ;
typedef TYPE_1__ xps_glyph_metrics ;
typedef int xps_document ;
typedef int fz_font ;
typedef int fz_context ;
struct TYPE_7__ {float units_per_EM; scalar_t__ ascender; } ;
typedef scalar_t__ FT_Fixed ;
typedef TYPE_2__* FT_Face ;


 int FT_Get_Advance (TYPE_2__*,int,int,scalar_t__*) ;
 int FT_LOAD_IGNORE_TRANSFORM ;
 int FT_LOAD_NO_SCALE ;
 int FT_LOAD_VERTICAL_LAYOUT ;
 int FZ_LOCK_FREETYPE ;
 TYPE_2__* fz_font_ft_face (int *,int *) ;
 int fz_lock (int *,int ) ;
 int fz_unlock (int *,int ) ;

void
xps_measure_font_glyph(fz_context *ctx, xps_document *doc, fz_font *font, int gid, xps_glyph_metrics *mtx)
{
 int mask = FT_LOAD_NO_SCALE | FT_LOAD_IGNORE_TRANSFORM;
 FT_Face face = fz_font_ft_face(ctx, font);
 FT_Fixed hadv = 0, vadv = 0;

 fz_lock(ctx, FZ_LOCK_FREETYPE);
 FT_Get_Advance(face, gid, mask, &hadv);
 FT_Get_Advance(face, gid, mask | FT_LOAD_VERTICAL_LAYOUT, &vadv);
 fz_unlock(ctx, FZ_LOCK_FREETYPE);

 mtx->hadv = (float) hadv / face->units_per_EM;
 mtx->vadv = (float) vadv / face->units_per_EM;
 mtx->vorg = (float) face->ascender / face->units_per_EM;
}
