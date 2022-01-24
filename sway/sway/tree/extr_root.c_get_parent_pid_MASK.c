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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char const*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static pid_t FUNC7(pid_t child) {
	pid_t parent = -1;
	char file_name[100];
	char *buffer = NULL;
	const char *sep = " ";
	FILE *stat = NULL;
	size_t buf_size = 0;

	FUNC4(file_name, "/proc/%d/stat", child);

	if ((stat = FUNC1(file_name, "r"))) {
		if (FUNC3(&buffer, &buf_size, stat) != -1) {
			FUNC5(buffer, sep); // pid
			FUNC5(NULL, sep);   // executable name
			FUNC5(NULL, sep);   // state
			char *token = FUNC5(NULL, sep);   // parent pid
			parent = FUNC6(token, NULL, 10);
		}
		FUNC2(buffer);
		FUNC0(stat);
	}

	if (parent) {
		return (parent == child) ? -1 : parent;
	}

	return -1;
}