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
 int /*<<< orphan*/  LOCK_EX ; 
 int /*<<< orphan*/  LOCK_UN ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*,int,int) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (int,char const*,int) ; 

__attribute__((used)) static int
FUNC6(int devnull, const char *argv[])
{
	static const char *trace_file;

	if (!trace_file) {
		trace_file = FUNC2("TIG_TRACE");
		if (!trace_file)
			trace_file = "";
	}

	if (*trace_file) {
		int fd = FUNC3(trace_file, O_RDWR | O_CREAT | O_APPEND, 0666);
		int i;

		FUNC1(fd, LOCK_EX);
		for (i = 0; argv[i]; i++) {
			if (FUNC5(fd, argv[i], FUNC4(argv[i])) == -1
			    || FUNC5(fd, " ", 1) == -1)
				break;
		}
		if (argv[i] || FUNC5(fd, "\n", 1) == -1) {
			FUNC1(fd, LOCK_UN);
			FUNC0(fd);
			return devnull;
		}

		FUNC1(fd, LOCK_UN);
		return fd;
	}

	return devnull;
}