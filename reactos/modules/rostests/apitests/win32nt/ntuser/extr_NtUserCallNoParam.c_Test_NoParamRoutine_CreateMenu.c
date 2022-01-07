
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HMENU ;


 int DestroyMenu (scalar_t__) ;
 scalar_t__ IsMenu (scalar_t__) ;
 scalar_t__ NtUserCallNoParam (int ) ;
 int TEST (int) ;
 scalar_t__ TRUE ;
 int _NOPARAM_ROUTINE_CREATEMENU ;

void
Test_NoParamRoutine_CreateMenu(void)
{
    HMENU hMenu;

    hMenu = (HMENU)NtUserCallNoParam(_NOPARAM_ROUTINE_CREATEMENU);
    TEST(IsMenu(hMenu) == TRUE);
    DestroyMenu(hMenu);

}
