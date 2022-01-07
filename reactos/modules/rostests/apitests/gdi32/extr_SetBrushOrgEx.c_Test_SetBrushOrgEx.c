
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_1__* LPPOINT ;
typedef scalar_t__ HDC ;


 scalar_t__ CreateCompatibleDC (int ) ;
 int ERROR_INVALID_HANDLE ;
 int SetBrushOrgEx (scalar_t__,int ,int ,TYPE_1__*) ;
 int TEST_SET (scalar_t__,int,int,TYPE_1__*,int,int ) ;
 int ok (int,char*) ;
 int ok_long (scalar_t__,int) ;

void Test_SetBrushOrgEx()
{
    HDC hdc;
    POINT ptOldOrg;

    hdc = CreateCompatibleDC(0);
    ok(hdc != 0, "could not ceate DC\n");

    TEST_SET(0, 0, 0, ((void*)0), 0, ERROR_INVALID_HANDLE);
    TEST_SET(0, 0, 0, (LPPOINT)-1, 0, ERROR_INVALID_HANDLE);
    TEST_SET(0, 0, 0, &ptOldOrg, 0, ERROR_INVALID_HANDLE);
    TEST_SET(hdc, 1, 2, &ptOldOrg, 1, 0);
    ok_long(ptOldOrg.x, 0);
    ok_long(ptOldOrg.y, 0);
    SetBrushOrgEx(hdc, 0, 0, &ptOldOrg);
    ok_long(ptOldOrg.x, 1);
    ok_long(ptOldOrg.y, 2);

    ptOldOrg.x = 0; ptOldOrg.y = 0;
    TEST_SET(hdc, 1, 2, (LPPOINT)-1, -1, 0);
    SetBrushOrgEx(hdc, 0, 0, &ptOldOrg);
    ok_long(ptOldOrg.x, 0);
    ok_long(ptOldOrg.y, 0);


    TEST_SET(hdc, -10000, -20000000, &ptOldOrg, 1, 0);
    ok_long(ptOldOrg.x, 0);
    ok_long(ptOldOrg.y, 0);
    SetBrushOrgEx(hdc, 0, 0, &ptOldOrg);
    ok_long(ptOldOrg.x, -10000);
    ok_long(ptOldOrg.y, -20000000);


}
