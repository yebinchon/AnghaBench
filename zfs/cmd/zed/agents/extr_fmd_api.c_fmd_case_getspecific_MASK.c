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
typedef  int /*<<< orphan*/  fmd_hdl_t ;
struct TYPE_3__ {void* ci_data; } ;
typedef  TYPE_1__ fmd_case_t ;

/* Variables and functions */

void *
FUNC0(fmd_hdl_t *hdl, fmd_case_t *cp)
{
	return (cp->ci_data);
}