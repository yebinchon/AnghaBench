
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_17__ ;
typedef struct TYPE_36__ TYPE_16__ ;
typedef struct TYPE_35__ TYPE_15__ ;
typedef struct TYPE_34__ TYPE_14__ ;
typedef struct TYPE_33__ TYPE_13__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct TYPE_45__ {int private_dict; scalar_t__* charstrings_len; scalar_t__* charstrings; int font_offset; int font_matrix; } ;
struct TYPE_39__ {TYPE_1__* internal; } ;
struct TYPE_46__ {TYPE_8__ type1; TYPE_2__ root; int psaux; } ;
struct TYPE_44__ {int hint; } ;
struct TYPE_42__ {void* y; void* x; } ;
struct TYPE_41__ {void* x; } ;
struct TYPE_43__ {TYPE_5__ advance; TYPE_4__ left_bearing; scalar_t__ glyph; scalar_t__ metrics_only; int face; } ;
struct TYPE_40__ {scalar_t__ (* get_glyph_metrics ) (int ,size_t,int ,TYPE_15__*) ;scalar_t__ (* get_glyph_data ) (int ,size_t,TYPE_17__*) ;} ;
struct TYPE_38__ {TYPE_16__* incremental_interface; } ;
struct TYPE_37__ {scalar_t__ length; scalar_t__ pointer; } ;
struct TYPE_36__ {int object; TYPE_3__* funcs; } ;
struct TYPE_35__ {void* advance_v; void* advance; void* bearing_x; scalar_t__ bearing_y; } ;
struct TYPE_34__ {int (* t1_make_subfont ) (int ,int *,int *) ;int (* ps_decoder_init ) (TYPE_13__*,TYPE_11__*,int ) ;TYPE_10__* t1_decoder_funcs; } ;
struct TYPE_33__ {int * current_subfont; } ;
struct TYPE_32__ {scalar_t__ hinting_engine; } ;
struct TYPE_31__ {TYPE_6__ builder; int font_offset; int font_matrix; } ;
struct TYPE_30__ {scalar_t__ (* parse_charstrings ) (TYPE_13__*,int *,int ) ;scalar_t__ (* parse_metrics ) (TYPE_11__*,int *,size_t) ;scalar_t__ (* parse_charstrings_old ) (TYPE_11__*,int *,size_t) ;} ;
typedef TYPE_7__* T1_GlyphSlot ;
typedef TYPE_8__* T1_Font ;
typedef TYPE_9__* T1_Face ;
typedef TYPE_10__* T1_Decoder_Funcs ;
typedef TYPE_11__* T1_Decoder ;
typedef TYPE_12__* PS_Driver ;
typedef TYPE_13__ PS_Decoder ;
typedef TYPE_14__* PSAux_Service ;
typedef int FT_ULong ;
typedef size_t FT_UInt ;
typedef scalar_t__ FT_Int ;
typedef TYPE_15__ FT_Incremental_MetricsRec ;
typedef TYPE_16__ FT_Incremental_InterfaceRec ;
typedef scalar_t__ FT_Error ;
typedef TYPE_17__ FT_Data ;
typedef int FT_Byte ;
typedef int FT_Bool ;
typedef int CFF_SubFontRec ;


 int FALSE ;
 void* FIXED_TO_INT (void*) ;
 scalar_t__ FT_ERR_EQ (scalar_t__,int ) ;
 scalar_t__ FT_Err_Ok ;
 int FT_FACE (TYPE_9__*) ;
 int FT_FACE_DRIVER (TYPE_9__*) ;
 scalar_t__ FT_HINTING_FREETYPE ;
 int Glyph_Too_Big ;
 void* INT_TO_FIXED (void*) ;
 int TRUE ;
 scalar_t__ stub1 (int ,size_t,TYPE_17__*) ;
 scalar_t__ stub2 (TYPE_11__*,int *,size_t) ;
 scalar_t__ stub3 (TYPE_11__*,int *,size_t) ;
 int stub4 (TYPE_13__*,TYPE_11__*,int ) ;
 int stub5 (int ,int *,int *) ;
 scalar_t__ stub6 (TYPE_13__*,int *,int ) ;
 scalar_t__ stub7 (TYPE_13__*,int *,int ) ;
 scalar_t__ stub8 (int ,size_t,int ,TYPE_15__*) ;

__attribute__((used)) static FT_Error
  T1_Parse_Glyph_And_Get_Char_String( T1_Decoder decoder,
                                      FT_UInt glyph_index,
                                      FT_Data* char_string,
                                      FT_Bool* force_scaling )
  {
    T1_Face face = (T1_Face)decoder->builder.face;
    T1_Font type1 = &face->type1;
    FT_Error error = FT_Err_Ok;

    PSAux_Service psaux = (PSAux_Service)face->psaux;
    const T1_Decoder_Funcs decoder_funcs = psaux->t1_decoder_funcs;
    PS_Decoder psdecoder;
    decoder->font_matrix = type1->font_matrix;
    decoder->font_offset = type1->font_offset;
    {
      char_string->pointer = type1->charstrings[glyph_index];
      char_string->length = (FT_Int)type1->charstrings_len[glyph_index];
    }

    if ( !error )
    {
      if ( decoder->builder.metrics_only )
        error = decoder_funcs->parse_metrics(
                  decoder,
                  (FT_Byte*)char_string->pointer,
                  (FT_UInt)char_string->length );

      else
      {
        CFF_SubFontRec subfont;


        psaux->ps_decoder_init( &psdecoder, decoder, TRUE );

        psaux->t1_make_subfont( FT_FACE( face ),
                                &face->type1.private_dict, &subfont );
        psdecoder.current_subfont = &subfont;

        error = decoder_funcs->parse_charstrings(
                  &psdecoder,
                  (FT_Byte*)char_string->pointer,
                  (FT_ULong)char_string->length );



        if ( FT_ERR_EQ( error, Glyph_Too_Big ) )
        {



          ((T1_GlyphSlot)decoder->builder.glyph)->hint = FALSE;

          *force_scaling = TRUE;

          error = decoder_funcs->parse_charstrings(
                    &psdecoder,
                    (FT_Byte*)char_string->pointer,
                    (FT_ULong)char_string->length );
        }
      }
    }
    return error;
  }
