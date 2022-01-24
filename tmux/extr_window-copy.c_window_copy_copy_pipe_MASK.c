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
struct window_mode_entry {int dummy; } ;
struct session {int dummy; } ;
struct job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct job*) ; 
 struct job* FUNC2 (char const*,struct session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,char const*,void*,size_t) ; 
 void* FUNC4 (struct window_mode_entry*,size_t*) ; 

__attribute__((used)) static void
FUNC5(struct window_mode_entry *wme, struct session *s,
    const char *prefix, const char *command)
{
	void		*buf;
	size_t		 len;
	struct job	*job;

	buf = FUNC4(wme, &len);
	if (buf == NULL)
		return;

	job = FUNC2(command, s, NULL, NULL, NULL, NULL, NULL, JOB_NOWAIT);
	FUNC0(FUNC1(job), buf, len);
	FUNC3(wme, prefix, buf, len);
}