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
typedef  int /*<<< orphan*/  UdevRuleSubstituteType ;

/* Variables and functions */
 int /*<<< orphan*/  SUBST_TYPE_FORMAT ; 
 int /*<<< orphan*/  SUBST_TYPE_PLAIN ; 
 int /*<<< orphan*/  SUBST_TYPE_SUBSYS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char) ; 

__attribute__((used)) static UdevRuleSubstituteType FUNC2(const char *str) {
        FUNC0(str);

        if (str[0] == '[')
                return SUBST_TYPE_SUBSYS;
        if (FUNC1(str, '%') || FUNC1(str, '$'))
                return SUBST_TYPE_FORMAT;
        return SUBST_TYPE_PLAIN;
}