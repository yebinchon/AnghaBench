#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  regex; scalar_t__ invert; } ;
typedef  TYPE_2__ rofi_int_matcher ;
struct TYPE_17__ {int start_index; int end_index; } ;
struct TYPE_14__ {int red; int green; int blue; } ;
struct TYPE_16__ {int style; TYPE_1__ color; } ;
typedef  TYPE_3__ RofiHighlightColorStyle ;
typedef  TYPE_4__ PangoAttribute ;
typedef  int /*<<< orphan*/  PangoAttrList ;
typedef  int /*<<< orphan*/  GMatchInfo ;

/* Variables and functions */
 int /*<<< orphan*/  G_REGEX_MATCH_PARTIAL ; 
 int /*<<< orphan*/  PANGO_STYLE_ITALIC ; 
 int /*<<< orphan*/  PANGO_UNDERLINE_SINGLE ; 
 int /*<<< orphan*/  PANGO_VARIANT_SMALL_CAPS ; 
 int /*<<< orphan*/  PANGO_WEIGHT_BOLD ; 
 int ROFI_HL_BOLD ; 
 int ROFI_HL_COLOR ; 
 int ROFI_HL_ITALIC ; 
 int ROFI_HL_SMALL_CAPS ; 
 int ROFI_HL_STRIKETHROUGH ; 
 int ROFI_HL_UNDERLINE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_4__* FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ) ; 

PangoAttrList *FUNC13 ( RofiHighlightColorStyle th, rofi_int_matcher**tokens, const char *input, PangoAttrList *retv )
{
    // Do a tokenized match.
    if ( tokens ) {
        for ( int j = 0; tokens[j]; j++ ) {
            GMatchInfo *gmi = NULL;
            if ( tokens[j]->invert ) {
                continue;
            }
            FUNC5 ( tokens[j]->regex, input, G_REGEX_MATCH_PARTIAL, &gmi );
            while ( FUNC3 ( gmi ) ) {
                int count = FUNC2 ( gmi );
                for ( int index = ( count > 1 ) ? 1 : 0; index < count; index++ ) {
                    int start, end;
                    FUNC0 ( gmi, index, &start, &end );
                    if ( th.style & ROFI_HL_BOLD ) {
                        PangoAttribute *pa = FUNC12 ( PANGO_WEIGHT_BOLD );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_UNDERLINE ) {
                        PangoAttribute *pa = FUNC10 ( PANGO_UNDERLINE_SINGLE );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_STRIKETHROUGH ) {
                        PangoAttribute *pa = FUNC8 ( TRUE );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_SMALL_CAPS ) {
                        PangoAttribute *pa = FUNC11 ( PANGO_VARIANT_SMALL_CAPS );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_ITALIC ) {
                        PangoAttribute *pa = FUNC9 ( PANGO_STYLE_ITALIC );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                    if ( th.style & ROFI_HL_COLOR ) {
                        PangoAttribute *pa = FUNC6 (
                            th.color.red * 65535,
                            th.color.green * 65535,
                            th.color.blue * 65535 );
                        pa->start_index = start;
                        pa->end_index   = end;
                        FUNC7 ( retv, pa );
                    }
                }
                FUNC4 ( gmi, NULL );
            }
            FUNC1 ( gmi );
        }
    }
    return retv;
}