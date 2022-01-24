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

/* Variables and functions */
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  log_event_cb ; 
 int /*<<< orphan*/ * log_file ; 
 scalar_t__ log_level ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char const*,long) ; 

void
FUNC7(const char *name)
{
	char	*path;

	if (log_level == 0)
		return;
	FUNC4();

	FUNC6(&path, "tmux-%s-%ld.log", name, (long)FUNC3());
	log_file = FUNC1(path, "a");
	FUNC2(path);
	if (log_file == NULL)
		return;

	FUNC5(log_file, NULL, _IOLBF, 0);
	FUNC0(log_event_cb);
}