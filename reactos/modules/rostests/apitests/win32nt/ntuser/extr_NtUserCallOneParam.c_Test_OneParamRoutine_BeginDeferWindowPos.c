
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HDWP ;


 scalar_t__ EndDeferWindowPos (scalar_t__) ;
 scalar_t__ NtUserCallOneParam (int,int) ;
 int TEST (int) ;

void
Test_OneParamRoutine_BeginDeferWindowPos(void)
{
    HDWP hWinPosInfo;

    hWinPosInfo = (HDWP)NtUserCallOneParam(5, 0x1e);
    TEST(hWinPosInfo != 0);
    TEST(EndDeferWindowPos(hWinPosInfo) != 0);

}
