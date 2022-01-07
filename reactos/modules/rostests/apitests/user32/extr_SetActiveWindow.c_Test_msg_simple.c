
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPARE_CACHE (int ) ;
 int FlushMessages () ;
 int SetActiveWindow (int ) ;
 int SetCursorPos (int ,int ) ;
 int activate1to2_chain ;
 int activate2to1_chain ;
 int create_test_windows () ;
 int destroy_test_window () ;
 int hWnd1 ;
 int hWnd2 ;
 int set_default_zorder () ;

void Test_msg_simple()
{
    SetCursorPos(0,0);

    create_test_windows();
    set_default_zorder();

    SetActiveWindow(hWnd1);
    FlushMessages();
    COMPARE_CACHE(activate2to1_chain);

    SetActiveWindow(hWnd2);
    FlushMessages();
    COMPARE_CACHE(activate1to2_chain);

    destroy_test_window();
}
