
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int EINVAL ;
 int ok (int,char*,char) ;
 int p__wcsset_s (char*,int,char) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__wcsset_s(void)
{
    wchar_t str[10];
    int r;

    if(!p__wcsset_s) {
        win_skip("_wcsset_s not available\n");
        return;
    }

    r = p__wcsset_s(((void*)0), 0, 'a');
    ok(r == EINVAL, "r = %d\n", r);

    str[0] = 'a';
    r = p__wcsset_s(str, 0, 'a');
    ok(r == EINVAL, "r = %d\n", r);
    ok(str[0] == 'a', "str[0] = %d\n", str[0]);

    str[0] = 'a';
    str[1] = 'b';
    r = p__wcsset_s(str, 2, 'c');
    ok(r == EINVAL, "r = %d\n", r);
    ok(!str[0], "str[0] = %d\n", str[0]);
    ok(str[1] == 'b', "str[1] = %d\n", str[1]);

    str[0] = 'a';
    str[1] = 0;
    str[2] = 'b';
    r = p__wcsset_s(str, 3, 'c');
    ok(r == 0, "r = %d\n", r);
    ok(str[0] == 'c', "str[0] = %d\n", str[0]);
    ok(str[1] == 0, "str[1] = %d\n", str[1]);
    ok(str[2] == 'b', "str[2] = %d\n", str[2]);
}
