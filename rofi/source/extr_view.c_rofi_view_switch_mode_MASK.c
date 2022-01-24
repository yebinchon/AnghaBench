#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int num_modi; void* refilter; void* reload; int /*<<< orphan*/  const* sw; int /*<<< orphan*/ * modi; scalar_t__ sidebar_bar; scalar_t__ prompt; } ;
typedef  TYPE_1__ RofiViewState ;
typedef  int /*<<< orphan*/  const Mode ;

/* Variables and functions */
 int /*<<< orphan*/  HIGHLIGHT ; 
 int /*<<< orphan*/  NORMAL ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10 ( RofiViewState *state, Mode *mode )
{
    state->sw = mode;
    // Update prompt;
    if ( state->prompt ) {
        FUNC8 ( state );
    }
    if ( state->sw ) {
        char * title = FUNC1 ( "rofi - %s", FUNC2 (state->sw ) );
        FUNC6 ( title );
        FUNC0 ( title );
    } else {
        FUNC6 ( "rofi" );
    }
    if ( state->sidebar_bar ) {
        for ( unsigned int j = 0; j < state->num_modi; j++ ) {
            const Mode * mode = FUNC3 ( j );
            FUNC9 ( state->modi[j], ( mode == state->sw ) ? HIGHLIGHT : NORMAL );
        }
    }
    FUNC5 ( state );
    state->reload   = TRUE;
    state->refilter = TRUE;
    FUNC4 ( state );
    FUNC7 ( state, TRUE );
}