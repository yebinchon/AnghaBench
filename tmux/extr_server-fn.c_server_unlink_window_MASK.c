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
struct winlink {int dummy; } ;
struct session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct session*) ; 
 int /*<<< orphan*/  FUNC1 (struct session*) ; 
 scalar_t__ FUNC2 (struct session*,struct winlink*) ; 

void
FUNC3(struct session *s, struct winlink *wl)
{
	if (FUNC2(s, wl))
		FUNC0(s);
	else
		FUNC1(s);
}