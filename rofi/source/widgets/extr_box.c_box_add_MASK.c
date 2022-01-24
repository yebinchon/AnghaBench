#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ parent; int /*<<< orphan*/  expand; scalar_t__ h; scalar_t__ w; } ;
typedef  TYPE_2__ widget ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {int w; int h; } ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  children; TYPE_1__ widget; } ;
typedef  TYPE_3__ box ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 scalar_t__ ROFI_ORIENTATION_VERTICAL ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8 ( box *box, widget *child, gboolean expand )
{
    if ( box == NULL ) {
        return;
    }
    // Make sure box is width/heigh enough.
    if ( box->type == ROFI_ORIENTATION_VERTICAL ) {
        int width = box->widget.w;
        width         = FUNC0 ( width, child->w + FUNC6 ( FUNC1 ( box ) ) );
        box->widget.w = width;
    }
    else {
        int height = box->widget.h;
        height        = FUNC0 ( height, child->h + FUNC5 ( FUNC1 ( box ) ) );
        box->widget.h = height;
    }
    child->expand = FUNC4 ( child, "expand", expand );
    FUNC2 ( child->parent == FUNC1 ( box ) );
    box->children = FUNC3 ( box->children, (void *) child );
    FUNC7 ( FUNC1 ( box ) );
}