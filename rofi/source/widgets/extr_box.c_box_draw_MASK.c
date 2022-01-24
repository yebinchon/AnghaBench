#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_6__ {int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ box ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 ( widget *wid, cairo_t *draw )
{
    box *b = (box *) wid;
    for ( GList *iter = FUNC0 ( b->children ); iter != NULL; iter = FUNC1 ( iter ) ) {
        widget * child = (widget *) iter->data;
        FUNC2 ( child, draw );
    }
}