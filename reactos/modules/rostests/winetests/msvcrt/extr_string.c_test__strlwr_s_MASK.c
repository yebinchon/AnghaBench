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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    errno_t ret;
    char buffer[20];

    if (!&p_strlwr_s)
    {
        FUNC6("Skipping _strlwr_s tests\n");
        return;
    }

    errno = EBADF;
    ret = FUNC3(NULL, 0);
    FUNC2(ret == EINVAL, "Expected _strlwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC3(NULL, sizeof(buffer));
    FUNC2(ret == EINVAL, "Expected _strlwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC3(buffer, 0);
    FUNC2(ret == EINVAL, "Expected _strlwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC5(buffer, "GoRrIsTeR");
    errno = EBADF;
    ret = FUNC3(buffer, 5);
    FUNC2(ret == EINVAL, "Expected _strlwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC2(!FUNC0(buffer, "\0oRrIsTeR", sizeof("\0oRrIsTeR")),
       "Expected the output buffer to be \"\\0oRrIsTeR\"\n");

    FUNC5(buffer, "GoRrIsTeR");
    errno = EBADF;
    ret = FUNC3(buffer, sizeof("GoRrIsTeR") - 1);
    FUNC2(ret == EINVAL, "Expected _strlwr_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC2(!FUNC0(buffer, "\0oRrIsTeR", sizeof("\0oRrIsTeR")),
       "Expected the output buffer to be \"\\0oRrIsTeR\"\n");

    FUNC5(buffer, "GoRrIsTeR");
    ret = FUNC3(buffer, sizeof("GoRrIsTeR"));
    FUNC2(ret == 0, "Expected _strlwr_s to return 0, got %d\n", ret);
    FUNC2(!FUNC4(buffer, "gorrister"),
       "Expected the output buffer to be \"gorrister\", got \"%s\"\n",
       buffer);

    FUNC1(buffer, "GoRrIsTeR\0ELLEN", sizeof("GoRrIsTeR\0ELLEN"));
    ret = FUNC3(buffer, sizeof(buffer));
    FUNC2(ret == 0, "Expected _strlwr_s to return 0, got %d\n", ret);
    FUNC2(!FUNC0(buffer, "gorrister\0ELLEN", sizeof("gorrister\0ELLEN")),
       "Expected the output buffer to be \"gorrister\\0ELLEN\", got \"%s\"\n",
       buffer);
}