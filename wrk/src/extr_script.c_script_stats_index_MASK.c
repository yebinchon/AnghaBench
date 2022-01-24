#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ stats ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  script_stats_percentile ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
    stats *s = FUNC0(L);
    const char *method = FUNC3(L, 2);
    if (!FUNC6("min",   method)) FUNC2(L, s->min);
    if (!FUNC6("max",   method)) FUNC2(L, s->max);
    if (!FUNC6("mean",  method)) FUNC2(L, FUNC4(s));
    if (!FUNC6("stdev", method)) FUNC2(L, FUNC5(s, FUNC4(s)));
    if (!FUNC6("percentile", method)) {
        FUNC1(L, script_stats_percentile);
    }
    return 1;
}