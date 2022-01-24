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
typedef  int /*<<< orphan*/  second ;
typedef  int /*<<< orphan*/  first ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ERANGE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    unsigned char dest[16];
    const unsigned char first[] = "dinosaur";
    const unsigned char second[] = "duck";
    int ret;

    if (!&p_mbsnbcat_s)
    {
        FUNC5("Skipping _mbsnbcat_s tests\n");
        return;
    }

    /* Test invalid arguments. */
    ret = FUNC4(NULL, 0, NULL, 0);
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);

    errno = EBADF;
    ret = FUNC4(NULL, 10, NULL, 0);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    errno = EBADF;
    ret = FUNC4(NULL, 0, NULL, 10);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);

    FUNC2(dest, 'X', sizeof(dest));
    errno = EBADF;
    ret = FUNC4(dest, 0, NULL, 0);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(dest[0] == 'X', "Expected the output buffer to be untouched\n");

    FUNC2(dest, 'X', sizeof(dest));
    errno = EBADF;
    ret = FUNC4(dest, 0, second, 0);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(dest[0] == 'X', "Expected the output buffer to be untouched\n");

    FUNC2(dest, 'X', sizeof(dest));
    errno = EBADF;
    ret = FUNC4(dest, sizeof(dest), NULL, 0);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(dest[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC2(dest, 'X', sizeof(dest));
    errno = EBADF;
    ret = FUNC4(dest, sizeof(dest), NULL, 10);
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(dest[0] == '\0', "Expected the output buffer to be null terminated\n");

    FUNC2(dest, 'X', sizeof(dest));
    dest[0] = '\0';
    ret = FUNC4(dest, sizeof(dest), second, sizeof(second));
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, second, sizeof(second)),
       "Expected the output buffer string to be \"duck\"\n");

    /* Test source truncation behavior. */
    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    ret = FUNC4(dest, sizeof(dest), second, 0);
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, first, sizeof(first)),
       "Expected the output buffer string to be \"dinosaur\"\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    ret = FUNC4(dest, sizeof(dest), second, sizeof(second));
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, "dinosaurduck", sizeof("dinosaurduck")),
       "Expected the output buffer string to be \"dinosaurduck\"\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    ret = FUNC4(dest, sizeof(dest), second, sizeof(second) + 1);
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, "dinosaurduck", sizeof("dinosaurduck")),
       "Expected the output buffer string to be \"dinosaurduck\"\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    ret = FUNC4(dest, sizeof(dest), second, sizeof(second) - 1);
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, "dinosaurduck", sizeof("dinosaurduck")),
       "Expected the output buffer string to be \"dinosaurduck\"\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    ret = FUNC4(dest, sizeof(dest), second, sizeof(second) - 2);
    FUNC3(ret == 0, "Expected _mbsnbcat_s to return 0, got %d\n", ret);
    FUNC3(!FUNC0(dest, "dinosaurduc", sizeof("dinosaurduc")),
       "Expected the output buffer string to be \"dinosaurduc\"\n");

    /* Test destination truncation behavior. */
    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    errno = EBADF;
    ret = FUNC4(dest, sizeof(first) - 1, second, sizeof(second));
    FUNC3(ret == EINVAL, "Expected _mbsnbcat_s to return EINVAL, got %d\n", ret);
    FUNC3(errno == EINVAL, "Expected errno to be EINVAL, got %d\n", errno);
    FUNC3(!FUNC0(dest, "\0inosaur", sizeof("\0inosaur") - 1),
       "Expected the output buffer string to be \"\\0inosaur\" without ending null terminator\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    errno = EBADF;
    ret = FUNC4(dest, sizeof(first), second, sizeof(second));
    FUNC3(ret == ERANGE, "Expected _mbsnbcat_s to return ERANGE, got %d\n", ret);
    FUNC3(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC3(!FUNC0(dest, "\0inosaurd", sizeof("\0inosaurd") - 1),
       "Expected the output buffer string to be \"\\0inosaurd\" without ending null terminator\n");

    FUNC2(dest, 'X', sizeof(dest));
    FUNC1(dest, first, sizeof(first));
    errno = EBADF;
    ret = FUNC4(dest, sizeof(first) + 1, second, sizeof(second));
    FUNC3(ret == ERANGE, "Expected _mbsnbcat_s to return ERANGE, got %d\n", ret);
    FUNC3(errno == ERANGE, "Expected errno to be ERANGE, got %d\n", errno);
    FUNC3(!FUNC0(dest, "\0inosaurdu", sizeof("\0inosaurdu") - 1),
       "Expected the output buffer string to be \"\\0inosaurdu\" without ending null terminator\n");
}