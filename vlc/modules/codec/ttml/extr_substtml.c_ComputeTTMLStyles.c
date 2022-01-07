
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_dictionary_t ;
struct TYPE_10__ {scalar_t__ unit; double i_value; } ;
struct TYPE_9__ {TYPE_2__ font_size; TYPE_4__* font_style; } ;
typedef TYPE_1__ ttml_style_t ;
typedef TYPE_2__ ttml_length_t ;
struct TYPE_11__ {int root_extent_v; int i_cell_resolution_v; } ;
typedef TYPE_3__ ttml_context_t ;
struct TYPE_12__ {int f_font_relsize; int i_font_size; } ;
typedef TYPE_4__ text_style_t ;


 int TTML_LINE_TO_HEIGHT_RATIO ;
 scalar_t__ TTML_UNIT_CELL ;
 scalar_t__ TTML_UNIT_PERCENT ;
 scalar_t__ TTML_UNIT_PIXELS ;
 int VLC_UNUSED (int const*) ;
 TYPE_2__ ttml_rebase_length (int ,TYPE_2__,int ) ;

__attribute__((used)) static void ComputeTTMLStyles( ttml_context_t *p_ctx, const vlc_dictionary_t *p_dict,
                               ttml_style_t *p_ttml_style )
{
    VLC_UNUSED(p_dict);


    text_style_t *p_text_style = p_ttml_style->font_style;
    ttml_length_t len = p_ttml_style->font_size;


    if( len.unit == TTML_UNIT_PERCENT )
    {
        len.i_value /= 100.0;
        len.unit = TTML_UNIT_CELL;
    }



    if( len.unit == TTML_UNIT_CELL )
        len = ttml_rebase_length( p_ctx->i_cell_resolution_v, len, p_ctx->root_extent_v );


    if( len.unit == TTML_UNIT_PERCENT )
        p_text_style->f_font_relsize = len.i_value / TTML_LINE_TO_HEIGHT_RATIO;
    else
    if( len.unit == TTML_UNIT_PIXELS )
        p_text_style->i_font_size = len.i_value;
}
