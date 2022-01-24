#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {int /*<<< orphan*/ * motion_target; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {TYPE_1__ mouse; int /*<<< orphan*/  main_window; } ;
typedef  TYPE_2__ RofiViewState ;
typedef  int BindingsScope ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  SCOPE_GLOBAL 137 
#define  SCOPE_MOUSE_EDITBOX 136 
#define  SCOPE_MOUSE_LISTVIEW 135 
#define  SCOPE_MOUSE_LISTVIEW_ELEMENT 134 
#define  SCOPE_MOUSE_MODE_SWITCHER 133 
#define  SCOPE_MOUSE_SCROLLBAR 132 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WIDGET_TRIGGER_ACTION_RESULT_GRAB_MOTION_BEGIN 131 
#define  WIDGET_TRIGGER_ACTION_RESULT_GRAB_MOTION_END 130 
#define  WIDGET_TRIGGER_ACTION_RESULT_HANDLED 129 
#define  WIDGET_TRIGGER_ACTION_RESULT_IGNORED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

gboolean FUNC5 ( RofiViewState *state, BindingsScope scope, guint action )
{
    switch ( scope )
    {
    case SCOPE_GLOBAL:
        FUNC1 ( action );
        return TRUE;
    case SCOPE_MOUSE_LISTVIEW:
    case SCOPE_MOUSE_LISTVIEW_ELEMENT:
    case SCOPE_MOUSE_EDITBOX:
    case SCOPE_MOUSE_SCROLLBAR:
    case SCOPE_MOUSE_MODE_SWITCHER:
    {
        gint   x = state->mouse.x, y = state->mouse.y;
        widget *target = FUNC2 ( FUNC0 ( state->main_window ), scope, x, y );
        if ( target == NULL ) {
            return FALSE;
        }
        FUNC4 ( target, &x, &y );
        switch ( FUNC3 ( target, action, x, y ) )
        {
        case WIDGET_TRIGGER_ACTION_RESULT_IGNORED:
            return FALSE;
        case WIDGET_TRIGGER_ACTION_RESULT_GRAB_MOTION_END:
            target = NULL;
        /* FALLTHRU */
        case WIDGET_TRIGGER_ACTION_RESULT_GRAB_MOTION_BEGIN:
            state->mouse.motion_target = target;
        /* FALLTHRU */
        case WIDGET_TRIGGER_ACTION_RESULT_HANDLED:
            return TRUE;
        }
        break;
    }
    }
    return FALSE;
}