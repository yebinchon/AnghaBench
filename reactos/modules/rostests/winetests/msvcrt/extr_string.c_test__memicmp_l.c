
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int _NLSCMPERROR ;
 int errno ;
 int ok (int,char*,int) ;
 int p__memicmp_l (char const*,char const*,int,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__memicmp_l(void)
{
    static const char *s1 = "abc";
    static const char *s2 = "aBd";
    int ret;

    if (!p__memicmp_l)
    {
        win_skip("_memicmp_l not found.\n");
        return;
    }

    errno = 0xdeadbeef;
    ret = p__memicmp_l(((void*)0), ((void*)0), 0, ((void*)0));
    ok(!ret, "got %d\n", ret);
    ok(errno == 0xdeadbeef, "errno is %d, expected 0xdeadbeef\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp_l(((void*)0), ((void*)0), 1, ((void*)0));
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp_l(s1, ((void*)0), 1, ((void*)0));
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp_l(((void*)0), s2, 1, ((void*)0));
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp_l(s1, s2, 2, ((void*)0));
    ok(!ret, "got %d\n", ret);
    ok(errno == 0xdeadbeef, "errno is %d, expected 0xdeadbeef\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp_l(s1, s2, 3, ((void*)0));
    ok(ret == -1, "got %d\n", ret);
    ok(errno == 0xdeadbeef, "errno is %d, expected 0xdeadbeef\n", errno);
}
