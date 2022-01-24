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
 scalar_t__ KEEPALIVE_MARGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char*,char**) ; 

__attribute__((used)) static void FUNC6(char *request_line, char *session, unsigned max, int *timeout) {
    char *state;
    char *tok;

    tok = FUNC5(request_line, ";", &state);
    if (tok == NULL)
        return;
    FUNC2(session, tok, FUNC0(FUNC3(tok), max - 1));

    while ((tok = FUNC5(NULL, ";", &state)) != NULL) {
        if (FUNC4(tok, "timeout=", 8) == 0) {
            *timeout = FUNC1(tok + 8);
            if (*timeout > 5)
                *timeout -= KEEPALIVE_MARGIN;
            else if (*timeout > 0)
                *timeout = 1;
        }
    }
}