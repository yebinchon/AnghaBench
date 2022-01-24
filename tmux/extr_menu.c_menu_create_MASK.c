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
struct menu {int /*<<< orphan*/  title; } ;

/* Variables and functions */
 struct menu* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

struct menu *
FUNC2(const char *title)
{
	struct menu	*menu;

	menu = FUNC0(1, sizeof *menu);
	menu->title = FUNC1(title);

	return (menu);
}