#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rewriteConfigState {int has_tail; int /*<<< orphan*/ * lines; int /*<<< orphan*/  option_to_line; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 char const* REDIS_CONFIG_REWRITE_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rewriteConfigState*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rewriteConfigState*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

void FUNC9(struct rewriteConfigState *state, const char *option, sds line, int force) {
    sds o = FUNC8(option);
    list *l = FUNC1(state->option_to_line,o);

    FUNC6(state,option);

    if (!l && !force) {
        /* Option not used previously, and we are not forced to use it. */
        FUNC7(line);
        FUNC7(o);
        return;
    }

    if (l) {
        listNode *ln = FUNC3(l);
        int linenum = (long) ln->value;

        /* There are still lines in the old configuration file we can reuse
         * for this option. Replace the line with the new one. */
        FUNC2(l,ln);
        if (FUNC4(l) == 0) FUNC0(state->option_to_line,o);
        FUNC7(state->lines[linenum]);
        state->lines[linenum] = line;
    } else {
        /* Append a new line. */
        if (!state->has_tail) {
            FUNC5(state,
                FUNC8(REDIS_CONFIG_REWRITE_SIGNATURE));
            state->has_tail = 1;
        }
        FUNC5(state,line);
    }
    FUNC7(o);
}