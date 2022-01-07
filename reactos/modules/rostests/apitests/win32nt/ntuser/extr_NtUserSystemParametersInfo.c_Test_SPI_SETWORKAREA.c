
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_1__* PVOID ;


 int ASSERT (int) ;
 int GetSystemMetrics (int ) ;
 int NtUserSystemParametersInfo (int ,int,TYPE_1__*,int ) ;
 int SM_CXVIRTUALSCREEN ;
 int SM_CYVIRTUALSCREEN ;
 int SPI_GETWORKAREA ;
 int SPI_SETWORKAREA ;
 int TEST (int) ;

void
Test_SPI_SETWORKAREA(void)
{
    RECT rcOrig, rc;


    ASSERT(NtUserSystemParametersInfo(SPI_GETWORKAREA, 0, &rcOrig, 0) == 1);


    rc = rcOrig;
    rc.left += 1;
    rc.top += 2;
    rc.right -= 3;
    rc.bottom -= 2;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 1, &rc, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, sizeof(RECT), &rc, 0) == 1);

    TEST(NtUserSystemParametersInfo(SPI_GETWORKAREA, 1, &rc, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETWORKAREA, -1, &rc, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETWORKAREA, 0xdeadbeef, &rc, 0) == 1);
    TEST(NtUserSystemParametersInfo(SPI_GETWORKAREA, 0, (PVOID)0xdeadbeef, 0) == 0);


    rc = rcOrig; rc.left = -1;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = -1;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = 10; rc.bottom = 11;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.top = 10; rc.bottom = 10;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.top = 10; rc.bottom = 9;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.left = 10; rc.right = 11;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.left = 10; rc.right = 10;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.left = 10; rc.right = 9;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.bottom = GetSystemMetrics(SM_CYVIRTUALSCREEN);
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.bottom = GetSystemMetrics(SM_CYVIRTUALSCREEN)+1;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);
    rc = rcOrig; rc.right = GetSystemMetrics(SM_CXVIRTUALSCREEN);
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 1);
    rc = rcOrig; rc.right = GetSystemMetrics(SM_CXVIRTUALSCREEN)+1;
    TEST(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rc, 0) == 0);


    ASSERT(NtUserSystemParametersInfo(SPI_SETWORKAREA, 0, &rcOrig, 0) == 1);


}
