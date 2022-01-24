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
struct list {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct list*,void const*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct list *list, const void *id, const char *label, int selected)
{
	return FUNC0(list, id, label, selected, 0, 0, NULL);
}