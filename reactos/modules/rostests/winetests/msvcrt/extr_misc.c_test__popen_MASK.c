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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EBADF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ p_set_errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(const char *name)
{
    FILE *pipe;
    char buf[1024];
    int ret;

    FUNC4(buf, "\"%s\" misc popen", name);
    pipe = FUNC1(buf, "r");
    FUNC3(pipe != NULL, "_popen failed with error: %d\n", errno);

    FUNC2(buf, sizeof(buf), pipe);
    FUNC3(!FUNC5(buf, "child output\n"), "buf = %s\n", buf);

    ret = FUNC0(pipe);
    FUNC3(ret == 0x37, "_pclose returned %x, expected 0x37\n", ret);

    errno = 0xdeadbeef;
    ret = FUNC0((FILE*)0xdeadbeef);
    FUNC3(ret == -1, "_pclose returned %x, expected -1\n", ret);
    if(p_set_errno)
        FUNC3(errno == EBADF, "errno = %d\n", errno);
}