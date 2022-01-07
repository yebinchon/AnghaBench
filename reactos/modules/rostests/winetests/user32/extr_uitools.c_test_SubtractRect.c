
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int BOOL ;


 int SetRect (TYPE_1__*,int,int,int,int) ;
 int SubtractRect (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void test_SubtractRect(void)
{
    RECT rect1;
    RECT rect2;
    RECT rectr;
    BOOL result;


    SetRect(&rect1, 50, 50, 150, 100);
    SetRect(&rect2, 250, 200, 1500, 1000);
    result = SubtractRect(&rectr, &rect1, &rect2);
    ok(result, "SubtractRect returned FALSE but subtraction should not be empty\n");
    ok(result && rectr.left == 50 && rectr.top == 50 && rectr.right ==150
       && rectr.bottom == 100, "wrong rect subtraction of SubtractRect (dest rect=%s)\n",
       wine_dbgstr_rect(&rectr));


    SetRect(&rect1, 2431, 626, 3427, 1608);
    SetRect(&rect2, 2499, 626, 3427, 1608);
    result = SubtractRect(&rectr, &rect1, &rect2);
    ok(result, "SubtractRect returned FALSE but subtraction should not be empty\n");
    ok(result && rectr.left == 2431 && rectr.top == 626 && rectr.right == 2499
       && rectr.bottom == 1608, "wrong rect subtraction of SubtractRect (dest rect=%s)\n",
       wine_dbgstr_rect(&rectr));


    SetRect(&rect1, 2431, 626, 3427, 1608);
    SetRect(&rect2, 2499, 626, 3427, 1608);
    result = SubtractRect(&rect2, &rect1, &rect2);
    ok(result, "SubtractRect returned FALSE but subtraction should not be empty\n");
    ok(result && rectr.left == 2431 && rectr.top == 626 && rectr.right == 2499
       && rectr.bottom == 1608, "wrong rect subtraction of SubtractRect (dest rect=%s)\n",
       wine_dbgstr_rect(&rectr));


    SetRect(&rect1, 250, 250, 400, 500);
    SetRect(&rect2, 50, 50, 1500, 1000);
    result = SubtractRect(&rectr, &rect1, &rect2);
    ok(!result, "SubtractRect returned TRUE but subtraction should be empty (dest rect=%s)\n",
       wine_dbgstr_rect(&rectr));


    SetRect(&rect1, 250, 250, 400, 500);
    SetRect(&rect2, 50, 50, 1500, 1000);
    result = SubtractRect(&rect2, &rect1, &rect2);
    ok(!result, "SubtractRect returned TRUE but subtraction should be empty (dest rect=%s)\n",
       wine_dbgstr_rect(&rect2));
}
