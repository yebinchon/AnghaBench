
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGSEGV ;
 void** __pxcptinfoptrs () ;
 int ok (int,char*,...) ;
 int raise (int ) ;
 int sighandler ;
 int signal (int ,int ) ;
 int test_value ;

__attribute__((used)) static void test___pxcptinfoptrs(void)
{
    void **ret = __pxcptinfoptrs();
    int res;

    ok(ret != ((void*)0), "ret == NULL\n");
    ok(*ret == ((void*)0), "*ret != NULL\n");

    test_value = 0;

    *ret = (void*)0xdeadbeef;
    signal(SIGSEGV, sighandler);
    res = raise(SIGSEGV);
    ok(res == 0, "failed to raise SIGSEGV\n");
    ok(*ret == (void*)0xdeadbeef, "*ret = %p\n", *ret);

    signal(SIGABRT, sighandler);
    res = raise(SIGABRT);
    ok(res == 0, "failed to raise SIGBREAK\n");
    ok(*ret == (void*)0xdeadbeef, "*ret = %p\n", *ret);

    ok(test_value == 2, "test_value = %d\n", test_value);
}
