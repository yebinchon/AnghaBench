#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ multi_select; } ;
typedef  TYPE_1__ listview ;
struct TYPE_20__ {TYPE_1__* textbox; TYPE_1__* box; TYPE_1__* icon; } ;
typedef  TYPE_2__ _listview_row ;
typedef  int TextboxFlags ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_18__ {scalar_t__ show_icons; } ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int TB_AUTOHEIGHT ; 
 int TB_INDICATOR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  WIDGET_TYPE_LISTVIEW_ELEMENT ; 
 int /*<<< orphan*/  WIDGET_TYPE_TEXTBOX_TEXT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_14__ config ; 
 int /*<<< orphan*/  g_free ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11 ( listview *lv, _listview_row *row )
{
    TextboxFlags flags = ( lv->multi_select ) ? TB_INDICATOR : 0;
    row->box  = FUNC2 ( FUNC0 ( lv ), "element",ROFI_ORIENTATION_HORIZONTAL );
    FUNC10 ( FUNC0(row->box), WIDGET_TYPE_LISTVIEW_ELEMENT);
    GList *list = FUNC7 ( FUNC0(row->box), "children", "element-icon,element-text");

    row->textbox = NULL;
    row->icon    = NULL;

    for ( GList *iter = FUNC3(list); iter != NULL;iter = FUNC5(iter)){
        if ( FUNC8((char *)iter->data, "element-icon") == 0 ) {
            if ( config.show_icons ) {
                row->icon = FUNC6 ( FUNC0 ( row->box ), "element-icon" );
                FUNC1 ( row->box, FUNC0 ( row->icon ), FALSE);
            }
        } else if ( FUNC8 ((char *)iter->data, "element-text") == 0 ){
            row->textbox= FUNC9 ( FUNC0 ( row->box ), WIDGET_TYPE_TEXTBOX_TEXT, "element-text", TB_AUTOHEIGHT|flags, NORMAL, "DDD", 0, 0 );
            FUNC1 ( row->box, FUNC0 ( row->textbox ), TRUE);
        }
    }
    FUNC4 ( list, g_free );
}