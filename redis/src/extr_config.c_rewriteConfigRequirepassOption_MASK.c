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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 

void FUNC6(struct rewriteConfigState *state, char *option) {
    int force = 1;
    sds line;
    sds password = FUNC0();

    /* If there is no password set, we don't want the requirepass option
     * to be present in the configuration at all. */
    if (password == NULL) {
        FUNC1(state,option);
        return;
    }

    line = FUNC5(option);
    line = FUNC3(line, " ", 1);
    line = FUNC4(line, password);

    FUNC2(state,option,line,force);
}