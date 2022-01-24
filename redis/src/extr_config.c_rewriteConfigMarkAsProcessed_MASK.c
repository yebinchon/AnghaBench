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
struct rewriteConfigState {int /*<<< orphan*/  rewritten; } ;
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 scalar_t__ DICT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(struct rewriteConfigState *state, const char *option) {
    sds opt = FUNC2(option);

    if (FUNC0(state->rewritten,opt,NULL) != DICT_OK) FUNC1(opt);
}