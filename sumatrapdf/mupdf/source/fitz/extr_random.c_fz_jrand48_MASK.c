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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {scalar_t__ seed48; } ;
typedef  TYPE_1__ fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

int32_t FUNC1(fz_context *ctx, uint16_t s[3])
{
	return (int32_t)(FUNC0(s, ctx->seed48+3) >> 16);
}