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
struct window {scalar_t__ references; } ;
struct session_group {int dummy; } ;
struct session {int dummy; } ;

/* Variables and functions */
 struct session_group* FUNC0 (struct session*) ; 
 scalar_t__ FUNC1 (struct session_group*) ; 

int
FUNC2(struct session *s, struct window *w)
{
	struct session_group	*sg;

	if ((sg = FUNC0(s)) != NULL)
		return (w->references != FUNC1(sg));
	return (w->references != 1);
}