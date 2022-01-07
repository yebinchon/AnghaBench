
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok (int,char*,int) ;
 int system (char*) ;

__attribute__((used)) static void test_system(void)
{
    int ret = system(((void*)0));
    ok(ret == 1, "Expected system to return 1, got %d\n", ret);

    ret = system("echo OK");
    ok(ret == 0, "Expected system to return 0, got %d\n", ret);
}
