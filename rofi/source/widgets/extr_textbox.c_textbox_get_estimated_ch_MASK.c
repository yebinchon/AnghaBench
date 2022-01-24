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

/* Variables and functions */
 scalar_t__ PANGO_SCALE ; 
 double ch_width ; 
 int /*<<< orphan*/  p_metrics ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

double FUNC1 ( void )
{
    if ( ch_width < 0 ) {
        int width = FUNC0 ( p_metrics );
        ch_width = ( width ) / (double) PANGO_SCALE;
    }
    return ch_width;
}