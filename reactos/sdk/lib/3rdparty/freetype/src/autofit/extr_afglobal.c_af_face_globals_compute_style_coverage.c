
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {int* glyph_styles; size_t glyph_count; TYPE_1__* module; TYPE_2__* face; } ;
struct TYPE_20__ {TYPE_4__* script_uni_nonbase_ranges; TYPE_4__* script_uni_ranges; } ;
struct TYPE_19__ {scalar_t__ first; size_t last; } ;
struct TYPE_18__ {size_t script; scalar_t__ coverage; size_t style; } ;
struct TYPE_17__ {int charmap; } ;
struct TYPE_16__ {size_t default_script; int fallback_style; } ;
typedef int FT_UShort ;
typedef size_t FT_ULong ;
typedef size_t FT_UInt ;
typedef size_t FT_Long ;
typedef TYPE_2__* FT_Face ;
typedef scalar_t__ FT_Error ;
typedef int FT_CharMap ;
typedef TYPE_3__* AF_StyleClass ;
typedef TYPE_4__* AF_Script_UniRange ;
typedef TYPE_5__* AF_ScriptClass ;
typedef TYPE_6__* AF_FaceGlobals ;


 scalar_t__ AF_COVERAGE_DEFAULT ;
 int AF_DIGIT ;
 int AF_NONBASE ;
 TYPE_5__** AF_SCRIPT_CLASSES_GET ;
 TYPE_3__** AF_STYLE_CLASSES_GET ;
 int AF_STYLE_MASK ;
 int AF_STYLE_UNASSIGNED ;
 int FT_ENCODING_UNICODE ;
 scalar_t__ FT_Err_Ok ;
 size_t FT_Get_Char_Index (TYPE_2__*,size_t) ;
 size_t FT_Get_Next_Char (TYPE_2__*,size_t,size_t*) ;
 scalar_t__ FT_Select_Charmap (TYPE_2__*,int ) ;
 int FT_Set_Charmap (TYPE_2__*,int ) ;
 int FT_TRACE4 (char*) ;
 int af_shaper_get_coverage (TYPE_6__*,TYPE_3__*,int*,int) ;
 int * af_style_names ;

__attribute__((used)) static FT_Error
  af_face_globals_compute_style_coverage( AF_FaceGlobals globals )
  {
    FT_Error error;
    FT_Face face = globals->face;
    FT_CharMap old_charmap = face->charmap;
    FT_UShort* gstyles = globals->glyph_styles;
    FT_UInt ss;
    FT_UInt i;
    FT_UInt dflt = ~0U;



    for ( i = 0; i < (FT_UInt)globals->glyph_count; i++ )
      gstyles[i] = AF_STYLE_UNASSIGNED;

    error = FT_Select_Charmap( face, FT_ENCODING_UNICODE );
    if ( error )
    {




      error = FT_Err_Ok;
      goto Exit;
    }


    for ( ss = 0; AF_STYLE_CLASSES_GET[ss]; ss++ )
    {
      AF_StyleClass style_class =
                            AF_STYLE_CLASSES_GET[ss];
      AF_ScriptClass script_class =
                            AF_SCRIPT_CLASSES_GET[style_class->script];
      AF_Script_UniRange range;


      if ( !script_class->script_uni_ranges )
        continue;





      if ( style_class->coverage == AF_COVERAGE_DEFAULT )
      {
        if ( (FT_UInt)style_class->script ==
             globals->module->default_script )
          dflt = ss;

        for ( range = script_class->script_uni_ranges;
              range->first != 0;
              range++ )
        {
          FT_ULong charcode = range->first;
          FT_UInt gindex;


          gindex = FT_Get_Char_Index( face, charcode );

          if ( gindex != 0 &&
               gindex < (FT_ULong)globals->glyph_count &&
               ( gstyles[gindex] & AF_STYLE_MASK ) == AF_STYLE_UNASSIGNED )
            gstyles[gindex] = (FT_UShort)ss;

          for (;;)
          {
            charcode = FT_Get_Next_Char( face, charcode, &gindex );

            if ( gindex == 0 || charcode > range->last )
              break;

            if ( gindex < (FT_ULong)globals->glyph_count &&
                 ( gstyles[gindex] & AF_STYLE_MASK ) == AF_STYLE_UNASSIGNED )
              gstyles[gindex] = (FT_UShort)ss;
          }
        }


        for ( range = script_class->script_uni_nonbase_ranges;
              range->first != 0;
              range++ )
        {
          FT_ULong charcode = range->first;
          FT_UInt gindex;


          gindex = FT_Get_Char_Index( face, charcode );

          if ( gindex != 0 &&
               gindex < (FT_ULong)globals->glyph_count &&
               ( gstyles[gindex] & AF_STYLE_MASK ) == (FT_UShort)ss )
            gstyles[gindex] |= AF_NONBASE;

          for (;;)
          {
            charcode = FT_Get_Next_Char( face, charcode, &gindex );

            if ( gindex == 0 || charcode > range->last )
              break;

            if ( gindex < (FT_ULong)globals->glyph_count &&
                 ( gstyles[gindex] & AF_STYLE_MASK ) == (FT_UShort)ss )
              gstyles[gindex] |= AF_NONBASE;
          }
        }
      }
      else
      {

        af_shaper_get_coverage( globals, style_class, gstyles, 0 );
      }
    }


    for ( ss = 0; AF_STYLE_CLASSES_GET[ss]; ss++ )
    {
      AF_StyleClass style_class = AF_STYLE_CLASSES_GET[ss];


      if ( style_class->coverage == AF_COVERAGE_DEFAULT )
        af_shaper_get_coverage( globals, style_class, gstyles, 0 );
    }


    af_shaper_get_coverage( globals, AF_STYLE_CLASSES_GET[dflt], gstyles, 1 );


    for ( i = 0x30; i <= 0x39; i++ )
    {
      FT_UInt gindex = FT_Get_Char_Index( face, i );


      if ( gindex != 0 && gindex < (FT_ULong)globals->glyph_count )
        gstyles[gindex] |= AF_DIGIT;
    }

  Exit:




    if ( globals->module->fallback_style != AF_STYLE_UNASSIGNED )
    {
      FT_Long nn;


      for ( nn = 0; nn < globals->glyph_count; nn++ )
      {
        if ( ( gstyles[nn] & AF_STYLE_MASK ) == AF_STYLE_UNASSIGNED )
        {
          gstyles[nn] &= ~AF_STYLE_MASK;
          gstyles[nn] |= globals->module->fallback_style;
        }
      }
    }
    FT_Set_Charmap( face, old_charmap );
    return error;
  }
