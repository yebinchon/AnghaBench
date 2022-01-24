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
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,size_t,char const*) ; 
 scalar_t__ FUNC3 (char const*,size_t*,char const**) ; 

__attribute__((used)) static int FUNC4(UdevRules *rules, const char *key, const char *value) {
        size_t offset;
        const char *hint;

        if (FUNC0(value))
                return FUNC1(rules, key);
        if (FUNC3(value, &offset, &hint) < 0)
                FUNC2(rules, key, value, offset + 1, hint);
        return 0;
}