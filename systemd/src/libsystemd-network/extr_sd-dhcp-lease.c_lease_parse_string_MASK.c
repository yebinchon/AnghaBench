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
typedef  char* uint8_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char* const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char* const*,int /*<<< orphan*/ ,size_t) ; 
 char* FUNC3 (char const*,size_t) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const uint8_t *option, size_t len, char **ret) {
        FUNC0(option);
        FUNC0(ret);

        if (len <= 0)
                *ret = FUNC4(*ret);
        else {
                char *string;

                /*
                 * One trailing NUL byte is OK, we don't mind. See:
                 * https://github.com/systemd/systemd/issues/1337
                 */
                if (FUNC2(option, 0, len - 1))
                        return -EINVAL;

                string = FUNC3((const char *) option, len);
                if (!string)
                        return -ENOMEM;

                FUNC1(*ret, string);
        }

        return 0;
}