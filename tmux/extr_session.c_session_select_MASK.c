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
struct session {int /*<<< orphan*/  windows; } ;

/* Variables and functions */
 int FUNC0 (struct session*,struct winlink*) ; 
 struct winlink* FUNC1 (int /*<<< orphan*/ *,int) ; 

int
FUNC2(struct session *s, int idx)
{
	struct winlink	*wl;

	wl = FUNC1(&s->windows, idx);
	return (FUNC0(s, wl));
}