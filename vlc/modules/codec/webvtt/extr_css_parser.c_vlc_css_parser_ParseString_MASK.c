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
typedef  int /*<<< orphan*/  yyscan_t ;
typedef  int /*<<< orphan*/  vlc_css_parser_t ;
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC5( vlc_css_parser_t *p_parser, const char *psz_css )
{
    yyscan_t yy;
    FUNC3(&yy);

    YY_BUFFER_STATE buf = FUNC1( psz_css, yy );

    bool b_ret = !FUNC4( yy, p_parser );

    FUNC0( buf, yy );
    FUNC2( yy );

    return b_ret;
}