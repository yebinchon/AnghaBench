#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {char* thread_name; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(tsd_t *tsd, const char *thread_name) {
	prof_tdata_t *tdata;
	unsigned i;
	char *s;

	tdata = FUNC3(tsd, true);
	if (tdata == NULL) {
		return EAGAIN;
	}

	/* Validate input. */
	if (thread_name == NULL) {
		return EFAULT;
	}
	for (i = 0; thread_name[i] != '\0'; i++) {
		char c = thread_name[i];
		if (!FUNC2(c) && !FUNC1(c)) {
			return EFAULT;
		}
	}

	s = FUNC4(FUNC6(tsd), thread_name);
	if (s == NULL) {
		return EAGAIN;
	}

	if (tdata->thread_name != NULL) {
		FUNC0(FUNC6(tsd), tdata->thread_name, NULL, NULL, true,
		    true);
		tdata->thread_name = NULL;
	}
	if (FUNC5(s) > 0) {
		tdata->thread_name = s;
	}
	return 0;
}