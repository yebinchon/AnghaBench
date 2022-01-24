#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  emode; int /*<<< orphan*/  layout; } ;
typedef  TYPE_1__ textbox ;
typedef  int /*<<< orphan*/  PangoEllipsizeMode ;

/* Variables and functions */
 int TB_WRAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 ( textbox *tb, PangoEllipsizeMode mode )
{
    if ( tb )
    {
        tb->emode = mode;
        if ( ( tb->flags & TB_WRAP ) != TB_WRAP ) {
            // Store the mode.
            FUNC1 ( tb->layout, tb->emode );
            FUNC2 ( FUNC0 ( tb ) );
        }
    }
}