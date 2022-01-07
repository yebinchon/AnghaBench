
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int regex; scalar_t__ invert; } ;
typedef TYPE_2__ rofi_int_matcher ;
struct TYPE_17__ {int start_index; int end_index; } ;
struct TYPE_14__ {int red; int green; int blue; } ;
struct TYPE_16__ {int style; TYPE_1__ color; } ;
typedef TYPE_3__ RofiHighlightColorStyle ;
typedef TYPE_4__ PangoAttribute ;
typedef int PangoAttrList ;
typedef int GMatchInfo ;


 int G_REGEX_MATCH_PARTIAL ;
 int PANGO_STYLE_ITALIC ;
 int PANGO_UNDERLINE_SINGLE ;
 int PANGO_VARIANT_SMALL_CAPS ;
 int PANGO_WEIGHT_BOLD ;
 int ROFI_HL_BOLD ;
 int ROFI_HL_COLOR ;
 int ROFI_HL_ITALIC ;
 int ROFI_HL_SMALL_CAPS ;
 int ROFI_HL_STRIKETHROUGH ;
 int ROFI_HL_UNDERLINE ;
 int TRUE ;
 int g_match_info_fetch_pos (int *,int,int*,int*) ;
 int g_match_info_free (int *) ;
 int g_match_info_get_match_count (int *) ;
 scalar_t__ g_match_info_matches (int *) ;
 int g_match_info_next (int *,int *) ;
 int g_regex_match (int ,char const*,int ,int **) ;
 TYPE_4__* pango_attr_foreground_new (int,int,int) ;
 int pango_attr_list_insert (int *,TYPE_4__*) ;
 TYPE_4__* pango_attr_strikethrough_new (int ) ;
 TYPE_4__* pango_attr_style_new (int ) ;
 TYPE_4__* pango_attr_underline_new (int ) ;
 TYPE_4__* pango_attr_variant_new (int ) ;
 TYPE_4__* pango_attr_weight_new (int ) ;

PangoAttrList *helper_token_match_get_pango_attr ( RofiHighlightColorStyle th, rofi_int_matcher**tokens, const char *input, PangoAttrList *retv )
{

    if ( tokens ) {
        for ( int j = 0; tokens[j]; j++ ) {
            GMatchInfo *gmi = ((void*)0);
            if ( tokens[j]->invert ) {
                continue;
            }
            g_regex_match ( tokens[j]->regex, input, G_REGEX_MATCH_PARTIAL, &gmi );
            while ( g_match_info_matches ( gmi ) ) {
                int count = g_match_info_get_match_count ( gmi );
                for ( int index = ( count > 1 ) ? 1 : 0; index < count; index++ ) {
                    int start, end;
                    g_match_info_fetch_pos ( gmi, index, &start, &end );
                    if ( th.style & ROFI_HL_BOLD ) {
                        PangoAttribute *pa = pango_attr_weight_new ( PANGO_WEIGHT_BOLD );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_UNDERLINE ) {
                        PangoAttribute *pa = pango_attr_underline_new ( PANGO_UNDERLINE_SINGLE );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_STRIKETHROUGH ) {
                        PangoAttribute *pa = pango_attr_strikethrough_new ( TRUE );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_SMALL_CAPS ) {
                        PangoAttribute *pa = pango_attr_variant_new ( PANGO_VARIANT_SMALL_CAPS );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_ITALIC ) {
                        PangoAttribute *pa = pango_attr_style_new ( PANGO_STYLE_ITALIC );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_COLOR ) {
                        PangoAttribute *pa = pango_attr_foreground_new (
                            th.color.red * 65535,
                            th.color.green * 65535,
                            th.color.blue * 65535 );
                        pa->start_index = start;
                        pa->end_index = end;
                        pango_attr_list_insert ( retv, pa );
                    }
                }
                g_match_info_next ( gmi, ((void*)0) );
            }
            g_match_info_free ( gmi );
        }
    }
    return retv;
}
