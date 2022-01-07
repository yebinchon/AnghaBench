
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int _NLSCMPERROR ;
 int errno ;
 int ok (int,char*,int) ;
 int p__memicmp (char const*,char const*,int) ;
 int p__memicmp_l ;

__attribute__((used)) static void test__memicmp(void)
{
    static const char *s1 = "abc";
    static const char *s2 = "aBd";
    int ret;

    ret = p__memicmp(((void*)0), ((void*)0), 0);
    ok(!ret, "got %d\n", ret);

    ret = p__memicmp(s1, s2, 2);
    ok(!ret, "got %d\n", ret);

    ret = p__memicmp(s1, s2, 3);
    ok(ret == -1, "got %d\n", ret);

    if (!p__memicmp_l)
        return;


    errno = 0xdeadbeef;
    ret = p__memicmp(((void*)0), ((void*)0), 1);
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp(s1, ((void*)0), 1);
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);

    errno = 0xdeadbeef;
    ret = p__memicmp(((void*)0), s2, 1);
    ok(ret == _NLSCMPERROR, "got %d\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
}
