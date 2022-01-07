
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LONG ;


 int EBADF ;
 int ERANGE ;
 scalar_t__ broken (int) ;
 int errno ;
 int ok (int,char*,...) ;
 int strtol (char*,char**,int ) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static void test_strtol(void)
{
    static char neg[] = "-0x";

    char* e;
    LONG l;
    ULONG ul;



    errno = EBADF;
    l = strtol("-1234", &e, 0);
    ok(l==-1234, "wrong value %d\n", l);
    ok(errno == EBADF || broken(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    ul = strtoul("1234", &e, 0);
    ok(ul==1234, "wrong value %u\n", ul);
    ok(errno == EBADF || broken(errno == 0), "wrong errno %d\n", errno);

    errno = EBADF;
    l = strtol("2147483647L", &e, 0);
    ok(l==2147483647, "wrong value %d\n", l);
    ok(errno == EBADF || broken(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    l = strtol("-2147483648L", &e, 0);
    ok(l==-2147483647L - 1, "wrong value %d\n", l);
    ok(errno == EBADF || broken(errno == 0), "wrong errno %d\n", errno);
    errno = EBADF;
    ul = strtoul("4294967295UL", &e, 0);
    ok(ul==4294967295ul, "wrong value %u\n", ul);
    ok(errno == EBADF || broken(errno == 0), "wrong errno %d\n", errno);

    errno = 0;
    l = strtol("9223372036854775807L", &e, 0);
    ok(l==2147483647, "wrong value %d\n", l);
    ok(errno == ERANGE, "wrong errno %d\n", errno);
    errno = 0;
    ul = strtoul("9223372036854775807L", &e, 0);
    ok(ul==4294967295ul, "wrong value %u\n", ul);
    ok(errno == ERANGE, "wrong errno %d\n", errno);

    errno = 0;
    ul = strtoul("-2", ((void*)0), 0);
    ok(ul == -2, "wrong value %u\n", ul);
    ok(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = strtoul("-4294967294", ((void*)0), 0);
    ok(ul == 2, "wrong value %u\n", ul);
    ok(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = strtoul("-4294967295", ((void*)0), 0);
    ok(ul==1, "wrong value %u\n", ul);
    ok(errno == 0, "wrong errno %d\n", errno);

    errno = 0;
    ul = strtoul("-4294967296", ((void*)0), 0);
    ok(ul == 1, "wrong value %u\n", ul);
    ok(errno == ERANGE, "wrong errno %d\n", errno);

    errno = 0;
    l = strtol(neg, &e, 0);
    ok(l == 0, "wrong value %d\n", l);
    ok(errno == 0, "wrong errno %d\n", errno);
    ok(e == neg, "e = %p, neg = %p\n", e, neg);
}
