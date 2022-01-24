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
struct TYPE_3__ {scalar_t__ year; scalar_t__ seconds; scalar_t__ month; scalar_t__ minutes; scalar_t__ hours; scalar_t__ day; } ;
typedef  TYPE_1__ icDateTimeNumber ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(fz_context *ctx, icDateTimeNumber *datetime)
{
	datetime->day = 0;
	datetime->hours = 0;
	datetime->minutes = 0;
	datetime->month = 0;
	datetime->seconds = 0;
	datetime->year = 0;
}