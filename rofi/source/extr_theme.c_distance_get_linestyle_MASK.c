#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_3__ {scalar_t__ style; } ;
typedef  TYPE_1__ RofiDistance ;

/* Variables and functions */
 scalar_t__ ROFI_HL_DASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double const*,int,double) ; 

void FUNC1 ( RofiDistance d, cairo_t *draw )
{
    if ( d.style == ROFI_HL_DASH ) {
        const double dashes[1] = { 4 };
        FUNC0 ( draw, dashes, 1, 0.0 );
    }
    else {
        FUNC0 ( draw, NULL, 0, 0.0 );
    }
}