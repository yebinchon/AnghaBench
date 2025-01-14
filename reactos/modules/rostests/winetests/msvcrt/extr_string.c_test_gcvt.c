
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 char* _gcvt (double,int,char*) ;
 scalar_t__ errno ;
 char* gcvt (double,int,char*) ;
 int ok (int,char*,...) ;
 scalar_t__ p_gcvt_s (char*,int,int,int) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_gcvt(void)
{
    char buf[1024], *res;
    errno_t err;

    if(!p_gcvt_s) {
        win_skip("Skipping _gcvt tests\n");
        return;
    }

    errno = 0;
    res = _gcvt(1.2, -1, buf);
    ok(res == ((void*)0), "res != NULL\n");
    ok(errno == ERANGE, "errno = %d\n", errno);

    errno = 0;
    res = _gcvt(1.2, 5, ((void*)0));
    ok(res == ((void*)0), "res != NULL\n");
    ok(errno == EINVAL, "errno = %d\n", errno);

    res = gcvt(1.2, 5, buf);
    ok(res == buf, "res != buf\n");
    ok(!strcmp(buf, "1.2"), "buf = %s\n", buf);

    buf[0] = 'x';
    err = p_gcvt_s(buf, 5, 1.2, 10);
    ok(err == ERANGE, "err = %d\n", err);
    ok(buf[0] == '\0', "buf[0] = %c\n", buf[0]);

    buf[0] = 'x';
    err = p_gcvt_s(buf, 4, 123456, 2);
    ok(err == ERANGE, "err = %d\n", err);
    ok(buf[0] == '\0', "buf[0] = %c\n", buf[0]);
}
