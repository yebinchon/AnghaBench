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
struct rewriteConfigState {int /*<<< orphan*/  option_to_line; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct rewriteConfigState *state, sds option, int linenum) {
    list *l = FUNC1(state->option_to_line,option);

    if (l == NULL) {
        l = FUNC3();
        FUNC0(state->option_to_line,FUNC4(option),l);
    }
    FUNC2(l,(void*)(long)linenum);
}