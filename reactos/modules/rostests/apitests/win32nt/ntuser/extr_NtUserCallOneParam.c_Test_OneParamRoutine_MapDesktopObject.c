
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef scalar_t__ HMENU ;
typedef int DWORD ;


 scalar_t__ CreateMenu () ;
 int DestroyMenu (scalar_t__) ;
 scalar_t__ GetDesktopWindow () ;
 int NtUserCallOneParam (int,int ) ;
 int TEST (int) ;
 int _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT ;

void
Test_OneParamRoutine_MapDesktopObject(void)
{
    DWORD pObject;
    HWND hWnd;
    HMENU hMenu;

    hWnd = GetDesktopWindow();
    pObject = NtUserCallOneParam((DWORD)hWnd, _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT);
    TEST(pObject > 0);
    TEST(pObject < 0x80000000);

    hMenu = CreateMenu();
    pObject = NtUserCallOneParam((DWORD)hMenu, _ONEPARAM_ROUTINE_MAPDEKTOPOBJECT);
    DestroyMenu(hMenu);
    TEST(pObject > 0);
    TEST(pObject < 0x80000000);

}
