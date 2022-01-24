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
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_4__ {int /*<<< orphan*/ * metrics; scalar_t__ height; } ;
typedef  TYPE_1__ TBFontConfig ;
typedef  int /*<<< orphan*/  PangoContext ;

/* Variables and functions */
 char const* default_font_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p_context ; 
 int /*<<< orphan*/ * p_metrics ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tbfc_cache ; 

void FUNC7 ( const char *font, PangoContext *p )
{
    FUNC0 ( p_metrics == NULL );
    p_context = FUNC3 ( p );
    p_metrics = FUNC4 ( p_context, NULL, NULL );
    TBFontConfig *tbfc = FUNC2 ( sizeof ( TBFontConfig ) );
    tbfc->metrics = p_metrics;
    tbfc->height  = FUNC5 ( tbfc->metrics ) + FUNC6 ( tbfc->metrics );
    FUNC1 ( tbfc_cache, (gpointer *) ( font ? font : default_font_name ), tbfc );
}