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
struct session_group {int /*<<< orphan*/  sessions; } ;
struct session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gentry ; 
 int /*<<< orphan*/ * FUNC1 (struct session*) ; 

void
FUNC2(struct session_group *sg, struct session *s)
{
	if (FUNC1(s) == NULL)
		FUNC0(&sg->sessions, s, gentry);
}