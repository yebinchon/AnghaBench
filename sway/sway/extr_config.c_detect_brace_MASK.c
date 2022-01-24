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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(FILE *file) {
	int ret = 0;
	int lines = 0;
	long pos = FUNC2(file);
	char *line = NULL;
	size_t line_size = 0;
	while ((FUNC3(&line, &line_size, file)) != -1) {
		lines++;
		FUNC5(line);
		if (*line) {
			if (FUNC4(line, "{") == 0) {
				ret = lines;
			}
			break;
		}
	}
	FUNC0(line);
	if (ret == 0) {
		FUNC1(file, pos, SEEK_SET);
	}
	return ret;
}