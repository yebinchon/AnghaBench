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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(char **lineptr, size_t *line_size, FILE *file,
		int *nlines) {
	char *next_line = NULL;
	size_t next_line_size = 0;
	ssize_t nread = FUNC1(lineptr, line_size, file);
	*nlines = nread == -1 ? 0 : 1;
	while (nread >= 2 && FUNC3(&(*lineptr)[nread - 2], "\\\n") == 0 && (*lineptr)[0] != '#') {
		ssize_t next_nread = FUNC1(&next_line, &next_line_size, file);
		if (next_nread == -1) {
			break;
		}
		(*nlines)++;

		nread += next_nread - 2;
		if ((ssize_t) *line_size < nread + 1) {
			*line_size = nread + 1;
			char *old_ptr = *lineptr;
			*lineptr = FUNC2(*lineptr, *line_size);
			if (!*lineptr) {
				FUNC0(old_ptr);
				nread = -1;
				break;
			}
		}
		FUNC4(&(*lineptr)[nread - next_nread], next_line);
	}
	FUNC0(next_line);
	return nread;
}