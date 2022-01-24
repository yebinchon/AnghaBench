#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  widget ;
struct TYPE_7__ {int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ box ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 ( widget *wid )
{
    box *b = (box *) wid;

    for ( GList *iter = FUNC1 ( b->children ); iter != NULL; iter = FUNC3 ( iter ) ) {
        widget * child = (widget *) iter->data;
        FUNC4 ( child );
    }
    FUNC2 ( b->children );
    FUNC0 ( b );
}