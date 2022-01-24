#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* parent; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ widget ;
typedef  int /*<<< orphan*/  ThemeWidget ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__ value; } ;
typedef  TYPE_3__ Property ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 scalar_t__ P_INHERIT ; 
 scalar_t__ P_LIST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** FUNC3 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rofi_g_list_strdup ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GList *FUNC6 ( const widget *widget, const char * property, const char *defaults )
{
    ThemeWidget *wid2 = FUNC5 ( widget->name, widget->state, TRUE );
    Property    *p    = FUNC4 ( wid2, P_LIST, property, TRUE );
    if ( p ) {
        if ( p->type == P_INHERIT ) {
            if ( widget->parent ) {
                return FUNC6 ( widget->parent, property, defaults );
            }
        }
        else if ( p->type == P_LIST ) {
            return FUNC2 ( p->value.list, rofi_g_list_strdup, NULL );
        }
    }
    char **r = defaults ? FUNC3 ( defaults, ",", 0 ) : NULL;
    if ( r ) {
        GList *l = NULL;
        for ( int i = 0; r[i] != NULL; i++ ) {
            l = FUNC1 ( l, r[i] );
        }
        FUNC0 ( r );
        return l;
    }
    return NULL;
}