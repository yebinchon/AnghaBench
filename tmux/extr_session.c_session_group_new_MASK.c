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
struct session_group {int /*<<< orphan*/  sessions; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct session_group* FUNC2 (char const*) ; 
 int /*<<< orphan*/  session_groups ; 
 struct session_group* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

struct session_group *
FUNC5(const char *name)
{
	struct session_group	*sg;

	if ((sg = FUNC2(name)) != NULL)
		return (sg);

	sg = FUNC3(1, sizeof *sg);
	sg->name = FUNC4(name);
	FUNC1(&sg->sessions);

	FUNC0(session_groups, &session_groups, sg);
	return (sg);
}