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
struct TYPE_4__ {int /*<<< orphan*/ * text; int /*<<< orphan*/  cursor; } ;
typedef  TYPE_1__ textbox ;
typedef  int /*<<< orphan*/  gunichar ;
typedef  char gchar ;
typedef  scalar_t__ GUnicodeBreakType ;

/* Variables and functions */
 scalar_t__ G_UNICODE_BREAK_ALPHABETIC ; 
 scalar_t__ G_UNICODE_BREAK_HEBREW_LETTER ; 
 scalar_t__ G_UNICODE_BREAK_NUMERIC ; 
 scalar_t__ G_UNICODE_BREAK_QUOTATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6 ( textbox *tb )
{
    if ( tb->text == NULL ) {
        return;
    }
    // Find word boundaries, with pango_Break?
    gchar *c = FUNC3 ( tb->text, tb->cursor );
    while ( ( c = FUNC2 ( c ) ) ) {
        gunichar          uc = FUNC1 ( c );
        GUnicodeBreakType bt = FUNC0 ( uc );
        if ( ( bt == G_UNICODE_BREAK_ALPHABETIC || bt == G_UNICODE_BREAK_HEBREW_LETTER ||
               bt == G_UNICODE_BREAK_NUMERIC || bt == G_UNICODE_BREAK_QUOTATION ) ) {
            break;
        }
    }
    if ( c == NULL || *c == '\0' ) {
        return;
    }
    while ( ( c = FUNC2 ( c ) ) ) {
        gunichar          uc = FUNC1 ( c );
        GUnicodeBreakType bt = FUNC0 ( uc );
        if ( !( bt == G_UNICODE_BREAK_ALPHABETIC || bt == G_UNICODE_BREAK_HEBREW_LETTER ||
                bt == G_UNICODE_BREAK_NUMERIC || bt == G_UNICODE_BREAK_QUOTATION ) ) {
            break;
        }
    }
    int index = FUNC4 ( tb->text, c );
    FUNC5 ( tb, index );
}