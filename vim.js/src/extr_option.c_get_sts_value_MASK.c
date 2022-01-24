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
struct TYPE_3__ {scalar_t__ b_p_sts; } ;

/* Variables and functions */
 TYPE_1__* curbuf ; 
 long FUNC0 (TYPE_1__*) ; 

long
FUNC1()
{
    return curbuf->b_p_sts < 0 ? FUNC0(curbuf) : curbuf->b_p_sts;
}