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
 int /*<<< orphan*/  USEC_PER_SEC ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *p, bool calendar, bool timestamp, bool timespan) {
        if (calendar && FUNC0(p, NULL) >= 0)
                FUNC1("Hint: this expression is a valid calendar specification. "
                           "Use 'systemd-analyze calendar \"%s\"' instead?", p);
        if (timestamp && FUNC3(p, NULL) >= 0)
                FUNC1("Hint: this expression is a valid timestamp. "
                           "Use 'systemd-analyze timestamp \"%s\"' instead?", p);
        if (timespan && FUNC2(p, NULL, USEC_PER_SEC) >= 0)
                FUNC1("Hint: this expression is a valid timespan. "
                           "Use 'systemd-analyze timespan \"%s\"' instead?", p);
}