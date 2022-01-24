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
struct TYPE_4__ {int blink; int /*<<< orphan*/  cursor; int /*<<< orphan*/ * text; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 ( textbox *tb, int pos )
{
    if ( tb == NULL ) {
        return;
    }
    int length = ( tb->text == NULL ) ? 0 : FUNC3 ( tb->text, -1 );
    tb->cursor = FUNC0 ( 0, FUNC1 ( length, pos ) );
    // Stop blink!
    tb->blink = 3;
    FUNC4 ( FUNC2 ( tb ) );
}