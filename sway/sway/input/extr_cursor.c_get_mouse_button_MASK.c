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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char**) ; 
 scalar_t__ FUNC1 (char const*,char**) ; 

uint32_t FUNC2(const char *name, char **error) {
	uint32_t button = FUNC1(name, error);
	if (!button && !*error) {
		button = FUNC0(name, error);
	}
	return button;
}