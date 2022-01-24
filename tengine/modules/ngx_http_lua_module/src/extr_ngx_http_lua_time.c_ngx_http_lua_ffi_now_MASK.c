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
struct TYPE_3__ {double sec; double msec; } ;
typedef  TYPE_1__ ngx_time_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 

double
FUNC1(void)
{
    ngx_time_t              *tp;

    tp = FUNC0();

    return tp->sec + tp->msec / 1000.0;
}