
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_30__ {float linewidth; scalar_t__ linejoin; scalar_t__ start_cap; int miterlimit; } ;
typedef TYPE_3__ fz_stroke_state ;
struct TYPE_31__ {int a; int b; int c; int d; int e; int f; } ;
typedef TYPE_4__ fz_matrix ;
struct TYPE_28__ {scalar_t__ fake_italic; } ;
struct TYPE_32__ {int name; TYPE_1__ flags; TYPE_9__* ft_face; } ;
typedef TYPE_5__ fz_font ;
struct TYPE_33__ {TYPE_2__* font; } ;
typedef TYPE_6__ fz_context ;
struct TYPE_36__ {int glyph; } ;
struct TYPE_35__ {int xx; int yx; int xy; int yy; } ;
struct TYPE_34__ {int x; int y; } ;
struct TYPE_29__ {int ftlib; } ;
typedef TYPE_7__ FT_Vector ;
typedef int FT_Stroker_LineJoin ;
typedef int FT_Stroker_LineCap ;
typedef int FT_Stroker ;
typedef TYPE_8__ FT_Matrix ;
typedef int * FT_Glyph ;
typedef TYPE_9__* FT_Face ;
typedef scalar_t__ FT_Error ;


 int FT_Done_Glyph (int *) ;
 scalar_t__ FT_Get_Glyph (int ,int **) ;
 scalar_t__ FT_Glyph_Stroke (int **,int ,int) ;
 scalar_t__ FT_Glyph_To_Bitmap (int **,int ,int ,int) ;
 int FT_LOAD_NO_BITMAP ;
 int FT_LOAD_NO_HINTING ;
 scalar_t__ FT_Load_Glyph (TYPE_9__*,int,int) ;
 int FT_RENDER_MODE_MONO ;
 int FT_RENDER_MODE_NORMAL ;
 int FT_STROKER_LINECAP_BUTT ;
 int FT_STROKER_LINECAP_ROUND ;
 int FT_STROKER_LINECAP_SQUARE ;
 int FT_STROKER_LINEJOIN_BEVEL ;
 int FT_STROKER_LINEJOIN_MITER_FIXED ;
 int FT_STROKER_LINEJOIN_MITER_VARIABLE ;
 int FT_STROKER_LINEJOIN_ROUND ;
 scalar_t__ FT_Set_Char_Size (TYPE_9__*,int,int,int,int) ;
 int FT_Set_Transform (TYPE_9__*,TYPE_8__*,TYPE_7__*) ;
 int FT_Stroker_Done (int ) ;
 scalar_t__ FT_Stroker_New (int ,int *) ;
 int FT_Stroker_Set (int ,int,int ,int ,int) ;
 scalar_t__ FZ_LINECAP_BUTT ;
 scalar_t__ FZ_LINECAP_ROUND ;
 scalar_t__ FZ_LINECAP_SQUARE ;
 scalar_t__ FZ_LINECAP_TRIANGLE ;
 scalar_t__ FZ_LINEJOIN_BEVEL ;
 scalar_t__ FZ_LINEJOIN_MITER ;
 scalar_t__ FZ_LINEJOIN_ROUND ;
 int FZ_LOCK_FREETYPE ;
 int SHEAR ;
 int ft_error_string (scalar_t__) ;
 int fz_adjust_ft_glyph_width (TYPE_6__*,TYPE_5__*,int,TYPE_4__*) ;
 int fz_lock (TYPE_6__*,int ) ;
 float fz_matrix_expansion (TYPE_4__) ;
 TYPE_4__ fz_pre_shear (TYPE_4__,int ,int ) ;
 int fz_warn (TYPE_6__*,char*,int ,...) ;

__attribute__((used)) static FT_Glyph
do_render_ft_stroked_glyph(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, fz_matrix ctm, const fz_stroke_state *state, int aa)
{
 FT_Face face = font->ft_face;
 float expansion = fz_matrix_expansion(ctm);
 int linewidth = state->linewidth * expansion * 64 / 2;
 FT_Matrix m;
 FT_Vector v;
 FT_Error fterr;
 FT_Stroker stroker;
 FT_Glyph glyph;
 FT_Stroker_LineJoin line_join;
 FT_Stroker_LineCap line_cap;

 fz_adjust_ft_glyph_width(ctx, font, gid, &trm);

 if (font->flags.fake_italic)
  trm = fz_pre_shear(trm, SHEAR, 0);

 m.xx = trm.a * 64;
 m.yx = trm.b * 64;
 m.xy = trm.c * 64;
 m.yy = trm.d * 64;
 v.x = trm.e * 64;
 v.y = trm.f * 64;

 fz_lock(ctx, FZ_LOCK_FREETYPE);
 fterr = FT_Set_Char_Size(face, 65536, 65536, 72, 72);
 if (fterr)
 {
  fz_warn(ctx, "FT_Set_Char_Size(%s,65536,72): %s", font->name, ft_error_string(fterr));
  return ((void*)0);
 }

 FT_Set_Transform(face, &m, &v);

 fterr = FT_Load_Glyph(face, gid, FT_LOAD_NO_BITMAP | FT_LOAD_NO_HINTING);
 if (fterr)
 {
  fz_warn(ctx, "FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s", font->name, gid, ft_error_string(fterr));
  return ((void*)0);
 }

 fterr = FT_Stroker_New(ctx->font->ftlib, &stroker);
 if (fterr)
 {
  fz_warn(ctx, "FT_Stroker_New(): %s", ft_error_string(fterr));
  return ((void*)0);
 }

 line_join =
  state->linejoin == FZ_LINEJOIN_MITER ? FT_STROKER_LINEJOIN_MITER_FIXED :
  state->linejoin == FZ_LINEJOIN_ROUND ? FT_STROKER_LINEJOIN_ROUND :
  state->linejoin == FZ_LINEJOIN_BEVEL ? FT_STROKER_LINEJOIN_BEVEL :
  FT_STROKER_LINEJOIN_MITER_VARIABLE;
 line_cap =
  state->start_cap == FZ_LINECAP_BUTT ? FT_STROKER_LINECAP_BUTT :
  state->start_cap == FZ_LINECAP_ROUND ? FT_STROKER_LINECAP_ROUND :
  state->start_cap == FZ_LINECAP_SQUARE ? FT_STROKER_LINECAP_SQUARE :
  state->start_cap == FZ_LINECAP_TRIANGLE ? FT_STROKER_LINECAP_BUTT :
  FT_STROKER_LINECAP_BUTT;

 FT_Stroker_Set(stroker, linewidth, line_cap, line_join, state->miterlimit * 65536);

 fterr = FT_Get_Glyph(face->glyph, &glyph);
 if (fterr)
 {
  fz_warn(ctx, "FT_Get_Glyph(): %s", ft_error_string(fterr));
  FT_Stroker_Done(stroker);
  return ((void*)0);
 }

 fterr = FT_Glyph_Stroke(&glyph, stroker, 1);
 if (fterr)
 {
  fz_warn(ctx, "FT_Glyph_Stroke(): %s", ft_error_string(fterr));
  FT_Done_Glyph(glyph);
  FT_Stroker_Done(stroker);
  return ((void*)0);
 }

 FT_Stroker_Done(stroker);

 fterr = FT_Glyph_To_Bitmap(&glyph, aa > 0 ? FT_RENDER_MODE_NORMAL : FT_RENDER_MODE_MONO, 0, 1);
 if (fterr)
 {
  fz_warn(ctx, "FT_Glyph_To_Bitmap(): %s", ft_error_string(fterr));
  FT_Done_Glyph(glyph);
  return ((void*)0);
 }
 return glyph;
}
