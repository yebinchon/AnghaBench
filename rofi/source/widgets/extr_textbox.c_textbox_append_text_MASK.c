#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; scalar_t__ cursor; } ;
typedef  TYPE_1__ textbox ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int TB_EDITABLE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,char const*,int) ; 

gboolean FUNC5 ( textbox *tb, const char *pad, const int pad_len )
{
    if ( tb == NULL ) {
        return FALSE;
    }
    if ( !( tb->flags & TB_EDITABLE ) ) {
        return FALSE;
    }

    // Filter When alt/ctrl is pressed do not accept the character.

    gboolean    used_something = FALSE;
    const gchar *w, *n, *e;
    for ( w = pad, n = FUNC2 ( w ), e = w + pad_len; w < e; w = n, n = FUNC2 ( n ) ) {
        if ( FUNC0 ( FUNC1 ( w ) ) ) {
            continue;
        }
        FUNC4 ( tb, tb->cursor, w, n - w );
        FUNC3 ( tb, tb->cursor + 1 );
        used_something = TRUE;
    }
    return used_something;
}