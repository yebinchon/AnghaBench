
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ok (int ,char*,int*) ;
 int* p___p__daylight () ;
 int* p__daylight () ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_daylight(void)
{
    int *ret1, *ret2;

    if (!p__daylight)
    {
        win_skip("__daylight() not available\n");
        return;
    }

    if (!p___p__daylight)
    {
        skip("__p__daylight not available\n");
        return;
    }

    ret1 = p__daylight();
    ret2 = p___p__daylight();
    ok(ret1 && ret1 == ret2, "got %p\n", ret1);
}
