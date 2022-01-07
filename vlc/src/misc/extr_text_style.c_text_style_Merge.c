
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_style_flags; int i_features; void* psz_monofontname; void* psz_fontname; } ;
typedef TYPE_1__ text_style_t ;


 int MERGE (int ,int ) ;
 int MERGE_SIZE (int ) ;
 int STYLE_HAS_BACKGROUND_ALPHA ;
 int STYLE_HAS_BACKGROUND_COLOR ;
 int STYLE_HAS_FONT_ALPHA ;
 int STYLE_HAS_FONT_COLOR ;
 int STYLE_HAS_OUTLINE_ALPHA ;
 int STYLE_HAS_OUTLINE_COLOR ;
 int STYLE_HAS_SHADOW_ALPHA ;
 int STYLE_HAS_SHADOW_COLOR ;
 int STYLE_HAS_WRAP_INFO ;
 int STYLE_NO_DEFAULTS ;
 int e_wrapinfo ;
 int f_font_relsize ;
 int free (void*) ;
 int i_background_alpha ;
 int i_background_color ;
 int i_font_alpha ;
 int i_font_color ;
 int i_font_size ;
 int i_outline_alpha ;
 int i_outline_color ;
 int i_outline_width ;
 int i_shadow_alpha ;
 int i_shadow_color ;
 int i_shadow_width ;
 int i_spacing ;
 void* strdup (void*) ;

void text_style_Merge( text_style_t *p_dst, const text_style_t *p_src, bool b_override )
{
    if( p_src->psz_fontname && (!p_dst->psz_fontname || b_override) )
    {
        free( p_dst->psz_fontname );
        p_dst->psz_fontname = strdup( p_src->psz_fontname );
    }

    if( p_src->psz_monofontname && (!p_dst->psz_monofontname || b_override) )
    {
        free( p_dst->psz_monofontname );
        p_dst->psz_monofontname = strdup( p_src->psz_monofontname );
    }

    if( p_src->i_features != STYLE_NO_DEFAULTS )
    {
        MERGE(i_font_color, STYLE_HAS_FONT_COLOR);
        MERGE(i_font_alpha, STYLE_HAS_FONT_ALPHA);
        MERGE(i_outline_color, STYLE_HAS_OUTLINE_COLOR);
        MERGE(i_outline_alpha, STYLE_HAS_OUTLINE_ALPHA);
        MERGE(i_shadow_color, STYLE_HAS_SHADOW_COLOR);
        MERGE(i_shadow_alpha, STYLE_HAS_SHADOW_ALPHA);
        MERGE(i_background_color, STYLE_HAS_BACKGROUND_COLOR);
        MERGE(i_background_alpha, STYLE_HAS_BACKGROUND_ALPHA);
        MERGE(e_wrapinfo, STYLE_HAS_WRAP_INFO);
        p_dst->i_features |= p_src->i_features;
        p_dst->i_style_flags |= p_src->i_style_flags;
    }

    MERGE_SIZE(f_font_relsize);
    MERGE_SIZE(i_font_size);
    MERGE_SIZE(i_outline_width);
    MERGE_SIZE(i_shadow_width);
    MERGE_SIZE(i_spacing);
}
