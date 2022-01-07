
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int _mbscmp (unsigned char const*,unsigned char const*) ;
 int ok (int,char*,int) ;
 int p_mbrlen ;
 int win_skip (char*) ;

__attribute__((used)) static void test__mbscmp(void)
{
    static const unsigned char a[] = {'a',0}, b[] = {'b',0};
    int ret;

    if (!p_mbrlen)
    {
        win_skip("_mbscmp tests\n");
        return;
    }

    ret = _mbscmp(((void*)0), ((void*)0));
    ok(ret == INT_MAX, "got %d\n", ret);

    ret = _mbscmp(a, ((void*)0));
    ok(ret == INT_MAX, "got %d\n", ret);

    ret = _mbscmp(((void*)0), a);
    ok(ret == INT_MAX, "got %d\n", ret);

    ret = _mbscmp(a, a);
    ok(!ret, "got %d\n", ret);

    ret = _mbscmp(a, b);
    ok(ret == -1, "got %d\n", ret);

    ret = _mbscmp(b, a);
    ok(ret == 1, "got %d\n", ret);
}
