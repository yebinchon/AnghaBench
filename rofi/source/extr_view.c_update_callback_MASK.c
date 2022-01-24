#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  textbox ;
typedef  int /*<<< orphan*/  icon ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
typedef  int TextBoxFontType ;
struct TYPE_19__ {scalar_t__ data; } ;
struct TYPE_16__ {double member_0; double member_1; double member_2; double member_3; } ;
struct TYPE_18__ {int member_0; TYPE_1__ member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/ * line_map; int /*<<< orphan*/  sw; scalar_t__ tokens; } ;
struct TYPE_15__ {scalar_t__ show_match; } ;
typedef  TYPE_2__ RofiViewState ;
typedef  TYPE_3__ RofiHighlightColorStyle ;
typedef  int /*<<< orphan*/  PangoAttribute ;
typedef  int /*<<< orphan*/  PangoAttrList ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int ROFI_HL_BOLD ; 
 int ROFI_HL_UNDERLINE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_14__ config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__ FUNC13 (int /*<<< orphan*/ ,char*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20 ( textbox *t,icon *ico, unsigned int index, void *udata, TextBoxFontType *type, gboolean full )
{
    RofiViewState *state = (RofiViewState *) udata;
    if ( full ) {
        GList *add_list = NULL;
        int   fstate    = 0;
        char  *text     = FUNC7 ( state->sw, state->line_map[index], &fstate, &add_list, TRUE );
        (*type) |= fstate;
        // TODO needed for markup.
        FUNC14 ( t, *type );
        // Move into list view.
        FUNC18 ( t, text );
        PangoAttrList *list = FUNC15 ( t );
        if ( list != NULL ) {
            FUNC11 ( list );
        }
        else{
            list = FUNC10 ();
        }
        if( ico ) {
            int             icon_height = FUNC19( FUNC0(ico) );
            cairo_surface_t *icon = FUNC8 ( state->sw, state->line_map[index], icon_height );
            FUNC6 ( ico, icon );
        }

        if ( state->tokens && config.show_match ) {
            RofiHighlightColorStyle th = { ROFI_HL_BOLD | ROFI_HL_UNDERLINE, { 0.0, 0.0, 0.0, 0.0 } };
            th = FUNC13 ( FUNC0 ( t ), "highlight", th );
            FUNC5 ( th, state->tokens, FUNC16 ( t ), list );
        }
        for ( GList *iter = FUNC2 ( add_list ); iter != NULL; iter = FUNC4 ( iter ) ) {
            FUNC9 ( list, (PangoAttribute *) ( iter->data ) );
        }
        FUNC17 ( t, list );
        FUNC12 ( list );
        FUNC3 ( add_list );
        FUNC1 ( text );
    }
    else {
        int fstate = 0;
        FUNC7 ( state->sw, state->line_map[index], &fstate, NULL, FALSE );
        (*type) |= fstate;
        // TODO needed for markup.
        FUNC14 ( t, *type );
    }
}