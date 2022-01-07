
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int BOOL ;


 int EqualRect (int *,int *) ;
 int SetRect (int *,int,int,int,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_EqualRect(void)
{
    RECT rect1, rect2;
    BOOL ret;

    SetRect(&rect1, 0, 0, 0, 0);
    SetRect(&rect2, 1, 1, 1, 1);

    ret = EqualRect(((void*)0), ((void*)0));
    ok(!ret, "got %d\n", ret);

    ret = EqualRect(&rect1, ((void*)0));
    ok(!ret, "got %d\n", ret);

    ret = EqualRect(((void*)0), &rect2);
    ok(!ret, "got %d\n", ret);

    ret = EqualRect(&rect1, &rect2);
    ok(!ret, "got %d\n", ret);

    SetRect(&rect1, 0, 0, 10, 10);
    SetRect(&rect2, 10, 10, 0, 0);

    ret = EqualRect(&rect1, &rect2);
    ok(!ret, "got %d\n", ret);

    ret = EqualRect(&rect1, &rect1);
    ok(ret, "got %d\n", ret);

    rect2 = rect1;
    ret = EqualRect(&rect1, &rect2);
    ok(ret, "got %d\n", ret);
}
