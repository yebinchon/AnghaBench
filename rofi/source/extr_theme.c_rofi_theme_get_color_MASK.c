#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* state; int /*<<< orphan*/  name; struct TYPE_9__* parent; } ;
typedef  TYPE_3__ widget ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  ThemeWidget ;
struct TYPE_7__ {int /*<<< orphan*/  alpha; int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_8__ {TYPE_1__ color; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ value; } ;
typedef  TYPE_4__ Property ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  P_COLOR ; 
 scalar_t__ P_INHERIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC4 ( const widget *widget, const char *property, cairo_t *d )
{
    ThemeWidget *wid = FUNC3 ( widget->name, widget->state, FALSE );
    Property    *p   = FUNC2 ( wid, P_COLOR, property, FALSE );
    if ( p ) {
        if ( p->type == P_INHERIT ) {
            if ( widget->parent ) {
                FUNC4 ( widget->parent, property, d );
            }
            return;
        }
        FUNC0 ( d,
                                p->value.color.red,
                                p->value.color.green,
                                p->value.color.blue,
                                p->value.color.alpha
                                );
    }
    else {
        FUNC1 ( "Theme entry: #%s %s property %s unset.", widget->name, widget->state ? widget->state : "", property );
    }
}