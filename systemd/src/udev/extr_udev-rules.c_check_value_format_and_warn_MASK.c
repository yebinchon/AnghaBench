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
typedef  int /*<<< orphan*/  UdevRules ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,char const*,size_t,char const*) ; 
 scalar_t__ FUNC2 (char const*,size_t*,char const**) ; 

__attribute__((used)) static void FUNC3(UdevRules *rules, const char *key, const char *value, bool nonempty) {
        size_t offset;
        const char *hint;

        if (nonempty && FUNC0(value))
                FUNC1(rules, key, value, (size_t) 0, "empty value");
        else if (FUNC2(value, &offset, &hint) < 0)
                FUNC1(rules, key, value, offset + 1, hint);
}