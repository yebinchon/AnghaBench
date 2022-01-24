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
struct TYPE_3__ {char* text; int blink; int /*<<< orphan*/  changed; } ;
typedef  TYPE_1__ textbox ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int const) ; 
 scalar_t__ FUNC5 (char*) ; 

void FUNC6 ( textbox *tb, const int char_pos, const char *str, const int slen )
{
    if ( tb == NULL ) {
        return;
    }
    char *c  = FUNC3 ( tb->text, char_pos );
    int  pos = c - tb->text;
    int  len = ( int ) FUNC5 ( tb->text );
    pos = FUNC0 ( 0, FUNC1 ( len, pos ) );
    // expand buffer
    tb->text = FUNC2 ( tb->text, len + slen + 1 );
    // move everything after cursor upward
    char *at = tb->text + pos;
    FUNC4 ( at + slen, at, len - pos + 1 );
    // insert new str
    FUNC4 ( at, str, slen );

    // Set modified, lay out need te be redrawn
    // Stop blink!
    tb->blink   = 2;
    tb->changed = TRUE;
}