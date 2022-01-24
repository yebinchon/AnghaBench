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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(struct rewriteConfigState *state, char *option, char *value, char *defvalue) {
    int force = 1;
    sds line;

    /* String options set to NULL need to be not present at all in the
     * configuration file to be set to NULL again at the next reboot. */
    if (value == NULL) {
        FUNC0(state,option);
        return;
    }

    /* Set force to zero if the value is set to its default. */
    if (defvalue && FUNC5(value,defvalue) == 0) force = 0;

    line = FUNC4(option);
    line = FUNC2(line, " ", 1);
    line = FUNC3(line, value, FUNC6(value));

    FUNC1(state,option,line,force);
}