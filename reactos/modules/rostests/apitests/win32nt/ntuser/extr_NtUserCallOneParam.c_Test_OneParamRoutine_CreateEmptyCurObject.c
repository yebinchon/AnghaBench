
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HICON ;


 scalar_t__ NtUserCallOneParam (int,int ) ;
 scalar_t__ NtUserDestroyCursor (int *,int) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT ;

void
Test_OneParamRoutine_CreateEmptyCurObject(void)
{
    HICON hIcon ;


    hIcon = (HICON) NtUserCallOneParam(0, _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT);
    TEST(hIcon != ((void*)0));

    TEST(NtUserDestroyCursor(hIcon, 0) == TRUE);


    hIcon = (HICON) NtUserCallOneParam(0xdeadbeef, _ONEPARAM_ROUTINE_CREATEEMPTYCUROBJECT);
    TEST(hIcon != ((void*)0));

    TEST(NtUserDestroyCursor(hIcon, 0xbaadf00d) == TRUE);

}
