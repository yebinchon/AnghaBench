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
struct window {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int VIS_CSTYLE ; 
 int VIS_NL ; 
 int VIS_OCTAL ; 
 int VIS_TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct window*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 

void
FUNC3(struct window *w, const char *new_name)
{
	FUNC0(w->name);
	FUNC2(&w->name, new_name, VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL);
	FUNC1("window-renamed", w);
}