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
typedef  int /*<<< orphan*/  quit ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC9(void) {
    char quit[4];

    FUNC7("Linenoise key codes debugging mode.\n"
            "Press keys to see scan codes. Type 'quit' at any time to exit.\n");
    if (FUNC1(STDIN_FILENO) == -1) return;
    FUNC6(quit,' ',4);
    while(1) {
        char c;
        int nread;

        nread = FUNC8(STDIN_FILENO,&c,1);
        if (nread <= 0) continue;
        FUNC5(quit,quit+1,sizeof(quit)-1); /* shift string to left. */
        quit[sizeof(quit)-1] = c; /* Insert current char on the right. */
        if (FUNC4(quit,"quit",sizeof(quit)) == 0) break;

        FUNC7("'%c' %02x (%d) (type quit to exit)\n",
            FUNC3(c) ? c : '?', (int)c, (int)c);
        FUNC7("\r"); /* Go left edge manually, we are in raw mode. */
        FUNC2(stdout);
    }
    FUNC0(STDIN_FILENO);
}