#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ os_zpl_special_smallblock; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ; 

__attribute__((used)) static void
FUNC2(void *arg, uint64_t newval)
{
	objset_t *os = arg;

	/*
	 * Inheritance and range checking should have been done by now.
	 */
	FUNC0(newval <= SPA_OLD_MAXBLOCKSIZE);
	FUNC0(FUNC1(newval));

	os->os_zpl_special_smallblock = newval;
}