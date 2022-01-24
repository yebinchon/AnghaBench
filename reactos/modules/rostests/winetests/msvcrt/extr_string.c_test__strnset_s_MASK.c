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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (char*,int,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    char buf[5] = {0};
    int r;

    if(!&p__strnset_s) {
        FUNC3("_strnset_s not available\n");
        return;
    }

    r = FUNC1(NULL, 0, 'a', 0);
    FUNC0(r == 0, "r = %d\n", r);

    buf[0] = buf[1] = buf[2] = 'b';
    r = FUNC1(buf, sizeof(buf), 'a', 2);
    FUNC0(r == 0, "r = %d\n", r);
    FUNC0(!FUNC2(buf, "aab"), "buf = %s\n", buf);

    r = FUNC1(buf, 0, 'a', 0);
    FUNC0(r == EINVAL, "r = %d\n", r);

    r = FUNC1(NULL, 0, 'a', 1);
    FUNC0(r == EINVAL, "r = %d\n", r);

    buf[3] = 'b';
    r = FUNC1(buf, sizeof(buf)-1, 'c', 2);
    FUNC0(r == EINVAL, "r = %d\n", r);
    FUNC0(!buf[0] && buf[1]=='c' && buf[2]=='b', "buf = %s\n", buf);
}