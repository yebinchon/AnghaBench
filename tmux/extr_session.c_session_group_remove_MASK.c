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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session_group*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct session_group*) ; 
 int /*<<< orphan*/  gentry ; 
 struct session_group* FUNC4 (struct session*) ; 
 int /*<<< orphan*/  session_groups ; 

__attribute__((used)) static void
FUNC5(struct session *s)
{
	struct session_group	*sg;

	if ((sg = FUNC4(s)) == NULL)
		return;
	FUNC2(&sg->sessions, s, gentry);
	if (FUNC1(&sg->sessions)) {
		FUNC0(session_groups, &session_groups, sg);
		FUNC3(sg);
	}
}