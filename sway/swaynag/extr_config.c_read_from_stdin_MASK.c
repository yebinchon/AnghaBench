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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static char *FUNC4(void) {
	char *buffer = NULL;
	size_t buffer_len = 0;
	char *line = NULL;
	size_t line_size = 0;
	ssize_t nread;
	while ((nread = FUNC1(&line, &line_size, stdin)) != -1) {
		buffer = FUNC2(buffer, buffer_len + nread + 1);
		FUNC3(&buffer[buffer_len], nread + 1, "%s", line);
		buffer_len += nread;
	}
	FUNC0(line);

	while (buffer && buffer[buffer_len - 1] == '\n') {
		buffer[--buffer_len] = '\0';
	}

	return buffer;
}