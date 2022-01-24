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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 

void
FUNC2(void *lr, size_t lrsize, char *name)
{
	size_t namesize = name ? FUNC0(name) + 1 : 0;

	FUNC1(lr, lrsize + namesize);
}