
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EINVAL ;
 int ok (int,char*,...) ;
 int p__strnset_s (char*,int,char,int) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__strnset_s(void)
{
    char buf[5] = {0};
    int r;

    if(!p__strnset_s) {
        win_skip("_strnset_s not available\n");
        return;
    }

    r = p__strnset_s(((void*)0), 0, 'a', 0);
    ok(r == 0, "r = %d\n", r);

    buf[0] = buf[1] = buf[2] = 'b';
    r = p__strnset_s(buf, sizeof(buf), 'a', 2);
    ok(r == 0, "r = %d\n", r);
    ok(!strcmp(buf, "aab"), "buf = %s\n", buf);

    r = p__strnset_s(buf, 0, 'a', 0);
    ok(r == EINVAL, "r = %d\n", r);

    r = p__strnset_s(((void*)0), 0, 'a', 1);
    ok(r == EINVAL, "r = %d\n", r);

    buf[3] = 'b';
    r = p__strnset_s(buf, sizeof(buf)-1, 'c', 2);
    ok(r == EINVAL, "r = %d\n", r);
    ok(!buf[0] && buf[1]=='c' && buf[2]=='b', "buf = %s\n", buf);
}
