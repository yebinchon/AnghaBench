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
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ GUnicodeBreakType ;

/* Variables and functions */
 scalar_t__ G_UNICODE_BREAK_ALPHABETIC ; 
 scalar_t__ G_UNICODE_BREAK_HEBREW_LETTER ; 
 scalar_t__ G_UNICODE_BREAK_NUMERIC ; 
 scalar_t__ G_UNICODE_BREAK_QUOTATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6 ( textbox *tb )
{
    // Find word boundaries, with pango_Break?
    gchar *n;
    gchar *c = FUNC2 ( tb->text, tb->cursor );
    while ( ( c = FUNC4 ( c ) ) && c != tb->text ) {
        gunichar          uc = FUNC1 ( c );
        GUnicodeBreakType bt = FUNC0 ( uc );
        if ( ( bt == G_UNICODE_BREAK_ALPHABETIC || bt == G_UNICODE_BREAK_HEBREW_LETTER ||
               bt == G_UNICODE_BREAK_NUMERIC || bt == G_UNICODE_BREAK_QUOTATION ) ) {
            break;
        }
    }
    if ( c != tb->text ) {
        while ( ( n = FUNC4 ( c ) ) ) {
            gunichar          uc = FUNC1 ( n );
            GUnicodeBreakType bt = FUNC0 ( uc );
            if ( !( bt == G_UNICODE_BREAK_ALPHABETIC || bt == G_UNICODE_BREAK_HEBREW_LETTER ||
                    bt == G_UNICODE_BREAK_NUMERIC || bt == G_UNICODE_BREAK_QUOTATION ) ) {
                break;
            }
            c = n;
            if ( n == tb->text ) {
                break;
            }
        }
    }
    int index = FUNC3 ( tb->text, c );
    FUNC5 ( tb, index );
}