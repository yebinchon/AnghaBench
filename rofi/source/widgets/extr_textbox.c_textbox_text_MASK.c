#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  cursor; void* text; TYPE_1__ widget; } ;
typedef  TYPE_2__ textbox ;
typedef  char gchar ;
struct TYPE_11__ {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int TB_AUTOWIDTH ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char const*) ; 
 void* FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (void*,int) ; 
 scalar_t__ FUNC8 (char const*,int,char const**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

void FUNC12 ( textbox *tb, const char *text )
{
    if ( tb == NULL ) {
        return;
    }
    FUNC4 ( tb->text );
    const gchar *last_pointer = NULL;

    if ( FUNC8 ( text, -1, &last_pointer ) ) {
        tb->text = FUNC5 ( text );
    }
    else {
        if ( last_pointer != NULL ) {
            // Copy string up to invalid character.
            tb->text = FUNC6 ( text, ( last_pointer - text ) );
        }
        else {
            tb->text = FUNC5 ( "Invalid UTF-8 string." );
        }
    }
    FUNC3 ( tb );
    if ( tb->flags & TB_AUTOWIDTH ) {
        FUNC9 ( tb, tb->widget.x, tb->widget.y, tb->widget.w, tb->widget.h );
        if ( FUNC2 ( tb )->parent ) {
            FUNC11 ( FUNC2 ( tb )->parent );
        }
    }

    tb->cursor = FUNC0 ( 0, FUNC1 ( ( int ) FUNC7 ( tb->text, -1 ), tb->cursor ) );
    FUNC10 ( FUNC2 ( tb ) );
}