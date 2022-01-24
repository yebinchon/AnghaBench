#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_css_term_t ;
typedef  int /*<<< orphan*/  vlc_css_expr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

vlc_css_expr_t * FUNC3( vlc_css_term_t term )
{
    vlc_css_expr_t *p_expr = FUNC0(1, sizeof(*p_expr));
    if(!FUNC2( p_expr, 0, term ))
    {
        FUNC1(p_expr);
        p_expr = NULL;
    }
    return p_expr;
}