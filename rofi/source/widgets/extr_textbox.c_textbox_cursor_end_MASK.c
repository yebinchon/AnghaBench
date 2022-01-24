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
struct TYPE_4__ {int cursor; int blink; int /*<<< orphan*/ * text; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 ( textbox *tb )
{
    if ( tb->text == NULL ) {
        tb->cursor = 0;
        FUNC2 ( FUNC0 ( tb ) );
        return;
    }
    tb->cursor = ( int ) FUNC1 ( tb->text, -1 );
    FUNC2 ( FUNC0 ( tb ) );
    // Stop blink!
    tb->blink = 2;
}