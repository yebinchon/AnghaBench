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
 int LINENOISE_MAX_LINE ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 
 int FUNC5 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC7 (char*) ; 
 size_t FUNC8 (char*) ; 

char *FUNC9(const char *prompt) {
    char buf[LINENOISE_MAX_LINE];
    int count;

    if (!FUNC3(STDIN_FILENO)) {
        /* Not a tty: read from file / pipe. In this mode we don't want any
         * limit to the line size, so we call a function to handle that. */
        return FUNC4();
    } else if (FUNC2()) {
        size_t len;

        FUNC6("%s",prompt);
        FUNC0(stdout);
        if (FUNC1(buf,LINENOISE_MAX_LINE,stdin) == NULL) return NULL;
        len = FUNC8(buf);
        while(len && (buf[len-1] == '\n' || buf[len-1] == '\r')) {
            len--;
            buf[len] = '\0';
        }
        return FUNC7(buf);
    } else {
        count = FUNC5(buf,LINENOISE_MAX_LINE,prompt);
        if (count == -1) return NULL;
        return FUNC7(buf);
    }
}