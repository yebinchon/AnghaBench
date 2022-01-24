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
struct colors {size_t* count; } ;

/* Variables and functions */
 int FUNC0 (size_t*) ; 

__attribute__((used)) static size_t
FUNC1(struct colors *colors)
{
	size_t free_color = 0;
	size_t lowest = (size_t) -1; // Max value of size_t
	int i;

	for (i = 0; i < FUNC0(colors->count); i++) {
		if (colors->count[i] < lowest) {
			lowest = colors->count[i];
			free_color = i;
		}
	}
	return free_color;
}