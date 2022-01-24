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
struct session {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct session* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct session* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session*) ; 
 int /*<<< orphan*/  FUNC3 (struct session*) ; 
 int /*<<< orphan*/  sessions ; 

struct session *
FUNC4(struct session *s)
{
	struct session *s2;

	if (FUNC0(&sessions) || !FUNC3(s))
		return (NULL);

	s2 = FUNC2(sessions, &sessions, s);
	if (s2 == NULL)
		s2 = FUNC1(sessions, &sessions);
	if (s2 == s)
		return (NULL);
	return (s2);
}