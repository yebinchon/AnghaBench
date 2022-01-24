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
typedef  scalar_t__ FormatSubstitutionType ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FORMAT_SUBST_ATTR ; 
 int /*<<< orphan*/  FORMAT_SUBST_ENV ; 
 scalar_t__ FORMAT_SUBST_RESULT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UTIL_PATH_SIZE ; 
 int FUNC1 (char const**,int,scalar_t__*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,unsigned int*) ; 

int FUNC4(const char *value, size_t *offset, const char **hint) {
        FormatSubstitutionType type;
        const char *s = value;
        char attr[UTIL_PATH_SIZE];
        int r;

        while (*s) {
                r = FUNC1(&s, true, &type, attr);
                if (r < 0) {
                        if (offset)
                                *offset = s - value;
                        if (hint)
                                *hint = "invalid substitution type";
                        return r;
                } else if (r == 0) {
                        s++;
                        continue;
                }

                if (FUNC0(type, FORMAT_SUBST_ATTR, FORMAT_SUBST_ENV) && FUNC2(attr)) {
                        if (offset)
                                *offset = s - value;
                        if (hint)
                                *hint = "attribute value missing";
                        return -EINVAL;
                }

                if (type == FORMAT_SUBST_RESULT && !FUNC2(attr)) {
                        unsigned i;

                        r = FUNC3(attr, &i);
                        if (r < 0) {
                                if (offset)
                                        *offset = s - value;
                                if (hint)
                                        *hint = "attribute value not a valid number";
                                return r;
                        }
                }
        }

        return 0;
}