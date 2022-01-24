#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  os_dsl_dataset; } ;
typedef  TYPE_1__ objset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_HOLD_FLAG_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

void
FUNC2(objset_t *os, boolean_t decrypt, void *tag)
{
	/*
	 * Stop upgrading thread
	 */
	FUNC0(os);
	FUNC1(os->os_dsl_dataset,
	    (decrypt) ? DS_HOLD_FLAG_DECRYPT : 0, tag);
}