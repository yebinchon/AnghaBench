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
 double char_height ; 
 int /*<<< orphan*/  p_metrics ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

double FUNC2 ( void )
{
    if ( char_height < 0 ) {
        int height = FUNC0 ( p_metrics ) + FUNC1 ( p_metrics );
        char_height = ( height ) / (double) PANGO_SCALE;
    }
    return char_height;
}