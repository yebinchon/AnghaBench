#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  enabled; } ;
typedef  TYPE_1__ widget ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  children; int /*<<< orphan*/  spacing; } ;
typedef  TYPE_2__ box ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ ROFI_ORIENTATION_VERTICAL ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6 ( widget *wid )
{
    box *b      = (box *) wid;
    int spacing = FUNC1 ( b->spacing, b->type );
    int height  = 0;
    if ( b->type == ROFI_ORIENTATION_VERTICAL ) {
        int active_widgets = 0;
        for ( GList *iter = FUNC2 ( b->children ); iter != NULL; iter = FUNC3 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            active_widgets++;
            height += FUNC4 ( child );
        }
        if ( active_widgets > 0 ) {
            height += ( active_widgets - 1 ) * spacing;
        }
    }
    else {
        for ( GList *iter = FUNC2 ( b->children ); iter != NULL; iter = FUNC3 ( iter ) ) {
            widget * child = (widget *) iter->data;
            if ( !child->enabled ) {
                continue;
            }
            height = FUNC0 ( FUNC4 ( child ), height );
        }
    }
    height += FUNC5 ( wid );
    return height;
}