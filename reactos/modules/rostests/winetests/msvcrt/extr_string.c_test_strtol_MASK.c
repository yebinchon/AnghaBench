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
typedef  int ULONG ;
typedef  int LONG ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    static char neg[] = "-0x";

    char* e;
    LONG l;
    ULONG ul;

    /* errno is only set in case of error, so reset errno to EBADF to check for errno modification */
    /* errno is modified on W2K8+ */
    errno = EBADF;
    l = FUNC2("-1234", &e, 0);
    FUNC1(l==-1234, "wrong value %d\n", l);
    FUNC1(errno == EBADF || FUNC0(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    ul = FUNC3("1234", &e, 0);
    FUNC1(ul==1234, "wrong value %u\n", ul);
    FUNC1(errno == EBADF || FUNC0(errno == 0), "wrong errno %d\n", errno);

    errno = EBADF;
    l = FUNC2("2147483647L", &e, 0);
    FUNC1(l==2147483647, "wrong value %d\n", l);
    FUNC1(errno == EBADF || FUNC0(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    l = FUNC2("-2147483648L", &e, 0);
    FUNC1(l==-2147483647L - 1, "wrong value %d\n", l);
    FUNC1(errno == EBADF || FUNC0(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    ul = FUNC3("4294967295UL", &e, 0);
    FUNC1(ul==4294967295ul, "wrong value %u\n", ul);
    FUNC1(errno == EBADF || FUNC0(errno == 0), "wrong errno %d\n", errno);

    errno = 0;
    l = FUNC2("9223372036854775807L", &e, 0);
    FUNC1(l==2147483647, "wrong value %d\n", l);
    FUNC1(errno == ERANGE, "wrong errno %d\n", errno);
    errno = 0;
    ul = FUNC3("9223372036854775807L", &e, 0);
    FUNC1(ul==4294967295ul, "wrong value %u\n", ul);
    FUNC1(errno == ERANGE, "wrong errno %d\n", errno);

    errno = 0;
    ul = FUNC3("-2", NULL, 0);
    FUNC1(ul == -2, "wrong value %u\n", ul);
    FUNC1(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = FUNC3("-4294967294", NULL, 0);
    FUNC1(ul == 2, "wrong value %u\n", ul);
    FUNC1(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = FUNC3("-4294967295", NULL, 0);
    FUNC1(ul==1, "wrong value %u\n", ul);
    FUNC1(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = FUNC3("-4294967296", NULL, 0);
    FUNC1(ul == 1, "wrong value %u\n", ul);
    FUNC1(errno == ERANGE, "wrong errno %d\n", errno);

    errno = 0;
    l = FUNC2(neg, &e, 0);
    FUNC1(l == 0, "wrong value %d\n", l);
    FUNC1(errno == 0, "wrong errno %d\n", errno);
    FUNC1(e == neg, "e = %p, neg = %p\n", e, neg);
}