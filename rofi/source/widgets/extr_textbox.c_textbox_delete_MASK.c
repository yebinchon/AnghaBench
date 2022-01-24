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
struct TYPE_3__ {char* text; int cursor; int blink; int /*<<< orphan*/  changed; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 

void FUNC6 ( textbox *tb, int pos, int dlen )
{
    if ( tb == NULL ) {
        return;
    }
    int len = FUNC3 ( tb->text, -1 );
    if ( len == pos ) {
        return;
    }
    pos = FUNC0 ( 0, FUNC1 ( len, pos ) );
    if ( ( pos + dlen ) > len ) {
        dlen = len - dlen;
    }
    // move everything after pos+dlen down
    char *start = FUNC2 ( tb->text, pos );
    char *end   = FUNC2  ( tb->text, pos + dlen );
    // Move remainder + closing \0
    FUNC4 ( start, end, ( tb->text + FUNC5 ( tb->text ) ) - end + 1 );
    if ( tb->cursor >= pos && tb->cursor < ( pos + dlen ) ) {
        tb->cursor = pos;
    }
    else if ( tb->cursor >= ( pos + dlen ) ) {
        tb->cursor -= dlen;
    }
    // Set modified, lay out need te be redrawn
    // Stop blink!
    tb->blink   = 2;
    tb->changed = TRUE;
}