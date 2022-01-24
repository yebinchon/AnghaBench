#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {short w; short h; int /*<<< orphan*/  (* resize ) (TYPE_1__*,short,short) ;} ;
typedef  TYPE_1__ widget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,short,short) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 ( widget *widget, short w, short h )
{
    if ( widget != NULL  ) {
        if ( widget->resize != NULL ) {
            if ( widget->w != w || widget->h != h ) {
                widget->resize ( widget, w, h );
            }
        }
        else {
            widget->w = w;
            widget->h = h;
        }
        // On a resize we always want to udpate.
        FUNC1 ( widget );
    }
}