#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf_runtime ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_10__ {int /*<<< orphan*/  kill_context; int /*<<< orphan*/  runtime_max_usec; int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Scope ;
typedef  TYPE_1__ FILE ;

/* Variables and functions */
 int FORMAT_TIMESPAN_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const*,char*,char const*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Unit *u, FILE *f, const char *prefix) {
        Scope *s = FUNC0(u);
        char buf_runtime[FORMAT_TIMESPAN_MAX];

        FUNC2(s);
        FUNC2(f);

        FUNC5(f,
                "%sScope State: %s\n"
                "%sResult: %s\n"
                "%sRuntimeMaxSec: %s\n",
                prefix, FUNC8(s->state),
                prefix, FUNC7(s->result),
                prefix, FUNC4(buf_runtime, sizeof(buf_runtime), s->runtime_max_usec, USEC_PER_SEC));

        FUNC3(FUNC1(s), f, prefix);
        FUNC6(&s->kill_context, f, prefix);
}