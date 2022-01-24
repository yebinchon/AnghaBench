#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int num_widgets; struct TYPE_8__** widgets; int /*<<< orphan*/  properties; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ThemeWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* rofi_theme ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4 ( ThemeWidget *parent, ThemeWidget *child )
{
    FUNC0 ( parent != NULL );
    FUNC0 ( child != NULL );

    if ( parent == rofi_theme && FUNC1(child->name, "*") == 0 ){
        FUNC3 ( parent, child->properties);
        return;
    }

    ThemeWidget *w = FUNC2 ( parent, child->name);
    FUNC3 ( w, child->properties);
    for ( unsigned int i =0; i < child->num_widgets; i++) {
        FUNC4 ( w, child->widgets[i]);
    }
}