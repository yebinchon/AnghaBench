#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int blink; } ;
typedef  TYPE_1__ textbox ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean FUNC3 ( gpointer data )
{
    textbox *tb = (textbox *) data;
    if ( tb->blink < 2 ) {
        tb->blink = !tb->blink;
        FUNC2 ( FUNC0 ( tb ) );
        FUNC1 ( );
    }
    else {
        tb->blink--;
    }
    return TRUE;
}