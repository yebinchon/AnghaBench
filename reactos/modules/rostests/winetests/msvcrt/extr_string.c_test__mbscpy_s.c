
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int src ;
typedef int dest ;


 int EINVAL ;
 int ERANGE ;
 int memcmp (unsigned char*,unsigned char const*,int) ;
 int memset (unsigned char*,char,int) ;
 int ok (int,char*,...) ;
 int p__mbscpy_s (unsigned char*,int,unsigned char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__mbscpy_s(void)
{
    const unsigned char src[] = "source string";
    unsigned char dest[16];
    int ret;

    if(!p__mbscpy_s)
    {
        win_skip("_mbscpy_s not found\n");
        return;
    }

    ret = p__mbscpy_s(((void*)0), 0, src);
    ok(ret == EINVAL, "got %d\n", ret);
    ret = p__mbscpy_s(((void*)0), sizeof(dest), src);
    ok(ret == EINVAL, "got %d\n", ret);
    ret = p__mbscpy_s(dest, 0, src);
    ok(ret == EINVAL, "got %d\n", ret);
    dest[0] = 'x';
    ret = p__mbscpy_s(dest, sizeof(dest), ((void*)0));
    ok(ret == EINVAL, "got %d\n", ret);
    ok(!dest[0], "dest buffer was not modified on invalid argument\n");

    memset(dest, 'X', sizeof(dest));
    ret = p__mbscpy_s(dest, sizeof(dest), src);
    ok(!ret, "got %d\n", ret);
    ok(!memcmp(dest, src, sizeof(src)), "dest = %s\n", dest);
    ok(dest[sizeof(src)] == 'X', "unused part of buffer was modified\n");

    memset(dest, 'X', sizeof(dest));
    ret = p__mbscpy_s(dest, 4, src);
    ok(ret == ERANGE, "got %d\n", ret);
    ok(!dest[0], "incorrect dest buffer (%d)\n", dest[0]);
    ok(dest[1] == src[1], "incorrect dest buffer (%d)\n", dest[1]);
}
