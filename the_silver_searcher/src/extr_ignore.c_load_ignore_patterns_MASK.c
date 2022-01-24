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
typedef  int /*<<< orphan*/  ignores ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

void FUNC6(ignores *ig, const char *path) {
    FILE *fp = NULL;
    fp = FUNC2(path, "r");
    if (fp == NULL) {
        FUNC5("Skipping ignore file %s: not readable", path);
        return;
    }
    FUNC5("Loading ignore file %s.", path);

    char *line = NULL;
    ssize_t line_len = 0;
    size_t line_cap = 0;

    while ((line_len = FUNC4(&line, &line_cap, fp)) > 0) {
        if (line_len == 0 || line[0] == '\n' || line[0] == '#') {
            continue;
        }
        if (line[line_len - 1] == '\n') {
            line[line_len - 1] = '\0'; /* kill the \n */
        }
        FUNC0(ig, line);
    }

    FUNC3(line);
    FUNC1(fp);
}