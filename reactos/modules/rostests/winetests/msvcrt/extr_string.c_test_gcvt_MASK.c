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
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 char* FUNC0 (double,int,char*) ; 
 scalar_t__ errno ; 
 char* FUNC1 (double,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char buf[1024], *res;
    errno_t err;

    if(!&p_gcvt_s) {
        FUNC5("Skipping _gcvt tests\n");
        return;
    }

    errno = 0;
    res = FUNC0(1.2, -1, buf);
    FUNC2(res == NULL, "res != NULL\n");
    FUNC2(errno == ERANGE, "errno = %d\n", errno);

    errno = 0;
    res = FUNC0(1.2, 5, NULL);
    FUNC2(res == NULL, "res != NULL\n");
    FUNC2(errno == EINVAL, "errno = %d\n", errno);

    res = FUNC1(1.2, 5, buf);
    FUNC2(res == buf, "res != buf\n");
    FUNC2(!FUNC4(buf, "1.2"), "buf = %s\n", buf);

    buf[0] = 'x';
    err = FUNC3(buf, 5, 1.2, 10);
    FUNC2(err == ERANGE, "err = %d\n", err);
    FUNC2(buf[0] == '\0', "buf[0] = %c\n", buf[0]);

    buf[0] = 'x';
    err = FUNC3(buf, 4, 123456, 2);
    FUNC2(err == ERANGE, "err = %d\n", err);
    FUNC2(buf[0] == '\0', "buf[0] = %c\n", buf[0]);
}