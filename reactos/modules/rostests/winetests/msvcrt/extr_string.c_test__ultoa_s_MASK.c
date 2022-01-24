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
 scalar_t__ ERANGE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    errno_t ret;
    char buffer[33];

    if (!&p_ultoa_s)
    {
        FUNC5("Skipping _ultoa_s tests\n");
        return;
    }

    errno = EBADF;
    ret = FUNC3(0, NULL, 0, 0);
    FUNC2(ret == EINVAL, "Expected _ultoa_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC1(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC3(0, buffer, 0, 0);
    FUNC2(ret == EINVAL, "Expected _ultoa_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC2(buffer[0] == 'X', "Expected the output buffer to be untouched\n");

    FUNC1(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC3(0, buffer, sizeof(buffer), 0);
    FUNC2(ret == EINVAL, "Expected _ultoa_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC2(buffer[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC1(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC3(0, buffer, sizeof(buffer), 64);
    FUNC2(ret == EINVAL, "Expected _ultoa_s to return EINVAL, got %d\n", ret);
    FUNC2(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC2(buffer[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC1(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC3(12345678, buffer, 4, 10);
    FUNC2(ret == ERANGE, "Expected _ultoa_s to return ERANGE, got %d\n", ret);
    FUNC2(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC2(!FUNC0(buffer, "\000765", 4),
       "Expected the output buffer to be null terminated with truncated output\n");

    FUNC1(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC3(12345678, buffer, 8, 10);
    FUNC2(ret == ERANGE, "Expected _ultoa_s to return ERANGE, got %d\n", ret);
    FUNC2(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC2(!FUNC0(buffer, "\0007654321", 8),
       "Expected the output buffer to be null terminated with truncated output\n");

    ret = FUNC3(12345678, buffer, 9, 10);
    FUNC2(ret == 0, "Expected _ultoa_s to return 0, got %d\n", ret);
    FUNC2(!FUNC4(buffer, "12345678"),
       "Expected output buffer string to be \"12345678\", got \"%s\"\n",
       buffer);

    ret = FUNC3(43690, buffer, sizeof(buffer), 2);
    FUNC2(ret == 0, "Expected _ultoa_s to return 0, got %d\n", ret);
    FUNC2(!FUNC4(buffer, "1010101010101010"),
       "Expected output buffer string to be \"1010101010101010\", got \"%s\"\n",
       buffer);

    ret = FUNC3(1092009, buffer, sizeof(buffer), 36);
    FUNC2(ret == 0, "Expected _ultoa_s to return 0, got %d\n", ret);
    FUNC2(!FUNC4(buffer, "nell"),
       "Expected output buffer string to be \"nell\", got \"%s\"\n",
       buffer);

    ret = FUNC3(5704, buffer, sizeof(buffer), 18);
    FUNC2(ret == 0, "Expected _ultoa_s to return 0, got %d\n", ret);
    FUNC2(!FUNC4(buffer, "hag"),
       "Expected output buffer string to be \"hag\", got \"%s\"\n",
       buffer);
}