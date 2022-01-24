#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  metrics; int /*<<< orphan*/  layout; } ;
typedef  TYPE_1__ textbox ;
struct TYPE_10__ {int /*<<< orphan*/  metrics; int /*<<< orphan*/  pfd; scalar_t__ height; } ;
typedef  TYPE_2__ TBFontConfig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  p_context ; 
 int /*<<< orphan*/  p_metrics ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tbfc_cache ; 

__attribute__((used)) static void FUNC13 ( textbox *tb )
{
    tb->metrics = p_metrics;
    const char * font = FUNC12 ( FUNC0 ( tb ), "font", NULL );
    if ( font ) {
        TBFontConfig *tbfc = FUNC3 ( tbfc_cache, font );
        if ( tbfc == NULL ) {
            tbfc      = FUNC4 ( sizeof ( TBFontConfig ) );
            tbfc->pfd = FUNC8 ( font );
            if ( FUNC5 ( tbfc->pfd, font ) ) {
                tbfc->metrics = FUNC6 ( p_context, tbfc->pfd, NULL );
                tbfc->height  = FUNC9 ( tbfc->metrics ) + FUNC10 ( tbfc->metrics );

                // Cast away consts. (*yuck*) because table_insert does not know it is const.
                FUNC2 ( tbfc_cache, (char *) font, tbfc );
            }
            else {
                FUNC7 ( tbfc->pfd );
                FUNC1 ( tbfc );
                tbfc = NULL;
            }
        }
        if ( tbfc ) {
            // Update for used font.
            FUNC11 ( tb->layout, tbfc->pfd );
            tb->metrics     = tbfc->metrics;
        }
    }
}