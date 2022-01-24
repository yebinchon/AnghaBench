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
typedef  int /*<<< orphan*/  errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long,...) ; 

void FUNC1(errcode_t errcode, unsigned long arg,
			const char *description)
{
#ifndef OMIT_COM_ERR
	if (description)
		FUNC0(0, errcode, "#%lu for %s", arg, description);
	else
		FUNC0(0, errcode, "#%lu", arg);
#endif
}