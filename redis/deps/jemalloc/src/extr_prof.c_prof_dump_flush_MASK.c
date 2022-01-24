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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ opt_abort ; 
 int /*<<< orphan*/  prof_dump_buf ; 
 scalar_t__ prof_dump_buf_end ; 
 int /*<<< orphan*/  prof_dump_fd ; 

__attribute__((used)) static bool
FUNC4(bool propagate_err) {
	bool ret = false;
	ssize_t err;

	FUNC1(config_prof);

	err = FUNC3(prof_dump_fd, prof_dump_buf, prof_dump_buf_end);
	if (err == -1) {
		if (!propagate_err) {
			FUNC2("<jemalloc>: write() failed during heap "
			    "profile flush\n");
			if (opt_abort) {
				FUNC0();
			}
		}
		ret = true;
	}
	prof_dump_buf_end = 0;

	return ret;
}