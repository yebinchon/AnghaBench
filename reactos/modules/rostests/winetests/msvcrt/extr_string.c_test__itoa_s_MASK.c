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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    errno_t ret;
    char buffer[33];

    if (!&p_itoa_s)
    {
        FUNC6("Skipping _itoa_s tests\n");
        return;
    }

    errno = EBADF;
    ret = FUNC4(0, NULL, 0, 0);
    FUNC3(ret == EINVAL, "Expected _itoa_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(0, buffer, 0, 0);
    FUNC3(ret == EINVAL, "Expected _itoa_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(buffer[0] == 'X', "Expected the output buffer to be untouched\n");

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(0, buffer, sizeof(buffer), 0);
    FUNC3(ret == EINVAL, "Expected _itoa_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(buffer[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(0, buffer, sizeof(buffer), 64);
    FUNC3(ret == EINVAL, "Expected _itoa_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(buffer[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(12345678, buffer, 4, 10);
    FUNC3(ret == ERANGE, "Expected _itoa_s to return ERANGE, got %d\n", ret);
    FUNC3(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC3(!FUNC1(buffer, "\000765", 4),
       "Expected the output buffer to be null terminated with truncated output\n");

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(12345678, buffer, 8, 10);
    FUNC3(ret == ERANGE, "Expected _itoa_s to return ERANGE, got %d\n", ret);
    FUNC3(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC3(!FUNC1(buffer, "\0007654321", 8),
       "Expected the output buffer to be null terminated with truncated output\n");

    FUNC2(buffer, 'X', sizeof(buffer));
    errno = EBADF;
    ret = FUNC4(-12345678, buffer, 9, 10);
    FUNC3(ret == ERANGE, "Expected _itoa_s to return ERANGE, got %d\n", ret);
    FUNC3(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC3(!FUNC1(buffer, "\00087654321", 9),
       "Expected the output buffer to be null terminated with truncated output\n");

    ret = FUNC4(12345678, buffer, 9, 10);
    FUNC3(ret == 0, "Expected _itoa_s to return 0, got %d\n", ret);
    FUNC3(!FUNC5(buffer, "12345678"),
       "Expected output buffer string to be \"12345678\", got \"%s\"\n",
       buffer);

    ret = FUNC4(43690, buffer, sizeof(buffer), 2);
    FUNC3(ret == 0, "Expected _itoa_s to return 0, got %d\n", ret);
    FUNC3(!FUNC5(buffer, "1010101010101010"),
       "Expected output buffer string to be \"1010101010101010\", got \"%s\"\n",
       buffer);

    ret = FUNC4(1092009, buffer, sizeof(buffer), 36);
    FUNC3(ret == 0, "Expected _itoa_s to return 0, got %d\n", ret);
    FUNC3(!FUNC5(buffer, "nell"),
       "Expected output buffer string to be \"nell\", got \"%s\"\n",
       buffer);

    ret = FUNC4(5704, buffer, sizeof(buffer), 18);
    FUNC3(ret == 0, "Expected _itoa_s to return 0, got %d\n", ret);
    FUNC3(!FUNC5(buffer, "hag"),
       "Expected output buffer string to be \"hag\", got \"%s\"\n",
       buffer);

    ret = FUNC4(-12345678, buffer, sizeof(buffer), 10);
    FUNC3(ret == 0, "Expected _itoa_s to return 0, got %d\n", ret);
    FUNC3(!FUNC5(buffer, "-12345678"),
       "Expected output buffer string to be \"-12345678\", got \"%s\"\n",
       buffer);

    FUNC0(100, buffer, 100);
    FUNC3(!FUNC5(buffer, "10"),
            "Expected output buffer string to be \"10\", got \"%s\"\n", buffer);
}