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
struct sway_container {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_by_mark_iterator ; 
 struct sway_container* FUNC0 (int /*<<< orphan*/ ,char*) ; 

struct sway_container *FUNC1(char *mark) {
	return FUNC0(find_by_mark_iterator, mark);
}