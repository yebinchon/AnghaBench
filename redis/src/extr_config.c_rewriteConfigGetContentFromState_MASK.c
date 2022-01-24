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
struct rewriteConfigState {int numlines; int /*<<< orphan*/ * lines; } ;
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

sds FUNC4(struct rewriteConfigState *state) {
    sds content = FUNC2();
    int j, was_empty = 0;

    for (j = 0; j < state->numlines; j++) {
        /* Every cluster of empty lines is turned into a single empty line. */
        if (FUNC3(state->lines[j]) == 0) {
            if (was_empty) continue;
            was_empty = 1;
        } else {
            was_empty = 0;
        }
        content = FUNC1(content,state->lines[j]);
        content = FUNC0(content,"\n",1);
    }
    return content;
}