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
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static char *FUNC3(void) {
    char *line = NULL;
    size_t len = 0, maxlen = 0;

    while(1) {
        if (len == maxlen) {
            if (maxlen == 0) maxlen = 16;
            maxlen *= 2;
            char *oldval = line;
            line = FUNC2(line,maxlen);
            if (line == NULL) {
                if (oldval) FUNC1(oldval);
                return NULL;
            }
        }
        int c = FUNC0(stdin);
        if (c == EOF || c == '\n') {
            if (c == EOF && len == 0) {
                FUNC1(line);
                return NULL;
            } else {
                line[len] = '\0';
                return line;
            }
        } else {
            line[len] = c;
            len++;
        }
    }
}