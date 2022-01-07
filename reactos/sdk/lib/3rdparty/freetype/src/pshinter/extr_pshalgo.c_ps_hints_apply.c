
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_19__ ;


struct TYPE_36__ {TYPE_6__* dimension; } ;
struct TYPE_35__ {scalar_t__ n_points; scalar_t__ n_contours; } ;
struct TYPE_34__ {scalar_t__ scale_mult; } ;
struct TYPE_31__ {TYPE_1__* zones; } ;
struct TYPE_29__ {TYPE_2__ normal_top; } ;
struct TYPE_33__ {TYPE_19__ blues; int memory; } ;
struct TYPE_32__ {int do_horz_hints; int do_vert_hints; TYPE_8__* globals; int * hint_tables; void* do_stem_adjust; void* do_vert_snapping; void* do_horz_snapping; } ;
struct TYPE_30__ {int org_ref; } ;
typedef int PS_Hints ;
typedef TYPE_3__ PSH_GlyphRec ;
typedef TYPE_3__* PSH_Glyph ;
typedef TYPE_5__* PSH_Globals ;
typedef TYPE_6__* PSH_Dimension ;
typedef scalar_t__ FT_Render_Mode ;
typedef TYPE_7__ FT_Outline ;
typedef int FT_Memory ;
typedef int FT_Int ;
typedef scalar_t__ FT_Fixed ;
typedef scalar_t__ FT_Error ;
typedef scalar_t__ FT_Bool ;


 scalar_t__ FALSE ;
 void* FT_BOOL (int) ;
 scalar_t__ FT_Err_Ok ;
 int FT_FREE (TYPE_3__*) ;
 scalar_t__ FT_MulDiv (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ FT_MulFix (int ,scalar_t__) ;
 scalar_t__ FT_NEW (TYPE_3__*) ;
 scalar_t__ FT_PIX_ROUND (scalar_t__) ;
 scalar_t__ FT_RENDER_MODE_LCD ;
 scalar_t__ FT_RENDER_MODE_LCD_V ;
 scalar_t__ FT_RENDER_MODE_LIGHT ;
 scalar_t__ FT_RENDER_MODE_MONO ;
 scalar_t__ TRUE ;
 TYPE_3__* ps_debug_glyph ;
 int psh_globals_set_scale (TYPE_8__*,scalar_t__,scalar_t__,int ,int ) ;
 int psh_glyph_compute_extrema (TYPE_3__*) ;
 int psh_glyph_done (TYPE_3__*) ;
 int psh_glyph_find_blue_points (TYPE_19__*,TYPE_3__*) ;
 int psh_glyph_find_strong_points (TYPE_3__*,int) ;
 scalar_t__ psh_glyph_init (TYPE_3__*,TYPE_7__*,int ,TYPE_5__*) ;
 int psh_glyph_interpolate_normal_points (TYPE_3__*,int) ;
 int psh_glyph_interpolate_other_points (TYPE_3__*,int) ;
 int psh_glyph_interpolate_strong_points (TYPE_3__*,int) ;
 int psh_glyph_load_points (TYPE_3__*,int) ;
 int psh_glyph_save_points (TYPE_3__*,int) ;
 int psh_hint_table_align_hints (int *,TYPE_8__*,int,TYPE_3__*) ;

FT_Error
  ps_hints_apply( PS_Hints ps_hints,
                  FT_Outline* outline,
                  PSH_Globals globals,
                  FT_Render_Mode hint_mode )
  {
    PSH_GlyphRec glyphrec;
    PSH_Glyph glyph = &glyphrec;
    FT_Error error;



    FT_Int dimension;



    if ( outline->n_points == 0 || outline->n_contours == 0 )
      return FT_Err_Ok;
    error = psh_glyph_init( glyph, outline, ps_hints, globals );
    if ( error )
      goto Exit;




    {
      PSH_Dimension dim_x = &glyph->globals->dimension[0];
      PSH_Dimension dim_y = &glyph->globals->dimension[1];

      FT_Fixed x_scale = dim_x->scale_mult;
      FT_Fixed y_scale = dim_y->scale_mult;

      FT_Fixed old_x_scale = x_scale;
      FT_Fixed old_y_scale = y_scale;

      FT_Fixed scaled;
      FT_Fixed fitted;

      FT_Bool rescale = FALSE;


      scaled = FT_MulFix( globals->blues.normal_top.zones->org_ref, y_scale );
      fitted = FT_PIX_ROUND( scaled );

      if ( fitted != 0 && scaled != fitted )
      {
        rescale = TRUE;

        y_scale = FT_MulDiv( y_scale, fitted, scaled );

        if ( fitted < scaled )
          x_scale -= x_scale / 50;

        psh_globals_set_scale( glyph->globals, x_scale, y_scale, 0, 0 );
      }

      glyph->do_horz_hints = 1;
      glyph->do_vert_hints = 1;

      glyph->do_horz_snapping = FT_BOOL( hint_mode == FT_RENDER_MODE_MONO ||
                                         hint_mode == FT_RENDER_MODE_LCD );

      glyph->do_vert_snapping = FT_BOOL( hint_mode == FT_RENDER_MODE_MONO ||
                                         hint_mode == FT_RENDER_MODE_LCD_V );

      glyph->do_stem_adjust = FT_BOOL( hint_mode != FT_RENDER_MODE_LIGHT );

      for ( dimension = 0; dimension < 2; dimension++ )
      {

        psh_glyph_load_points( glyph, dimension );


        psh_glyph_compute_extrema( glyph );


        psh_hint_table_align_hints( &glyph->hint_tables[dimension],
                                    glyph->globals,
                                    dimension,
                                    glyph );


        psh_glyph_find_strong_points( glyph, dimension );
        if ( dimension == 1 )
          psh_glyph_find_blue_points( &globals->blues, glyph );
        psh_glyph_interpolate_strong_points( glyph, dimension );
        psh_glyph_interpolate_normal_points( glyph, dimension );
        psh_glyph_interpolate_other_points( glyph, dimension );


        psh_glyph_save_points( glyph, dimension );

        if ( rescale )
          psh_globals_set_scale( glyph->globals,
                                 old_x_scale, old_y_scale, 0, 0 );
      }
    }

  Exit:


    psh_glyph_done( glyph );


    return error;
  }
