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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char** FUNC3 (char**,int) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int
FUNC5(int fd, char **lines[])
{

	FILE *fp;
	int lines_cnt = 0;
	size_t len = 0;
	char *line = NULL;
	char **tmp_lines = NULL, **tmp;
	char *nl = NULL;
	int rc;

	fp = FUNC1(fd, "r");
	if (fp == NULL)
		return (0);
	while (1) {
		rc = FUNC2(&line, &len, fp);
		if (rc == -1)
			break;

		tmp = FUNC3(tmp_lines, sizeof (*tmp_lines) * (lines_cnt + 1));
		if (tmp == NULL) {
			/* Return the lines we were able to process */
			break;
		}
		tmp_lines = tmp;

		/* Terminate newlines */
		if ((nl = FUNC4(line, '\n')) != NULL)
			*nl = '\0';
		tmp_lines[lines_cnt] = line;
		lines_cnt++;
		line = NULL;
	}
	FUNC0(fp);
	*lines = tmp_lines;
	return (lines_cnt);
}