
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ NtUserCallOneParam (scalar_t__,int ) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON ;

void
Test_OneParamRoutine_SwapMouseButtons(void)
{
    BOOL bInverse;

    NtUserCallOneParam(TRUE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    bInverse = (BOOL)NtUserCallOneParam(FALSE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    TEST(bInverse == TRUE);
    bInverse = (BOOL)NtUserCallOneParam(FALSE, _ONEPARAM_ROUTINE_SWAPMOUSEBUTTON);
    TEST(bInverse == FALSE);


}
