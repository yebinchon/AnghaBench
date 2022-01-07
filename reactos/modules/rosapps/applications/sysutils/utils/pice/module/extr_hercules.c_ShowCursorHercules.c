
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int TRUE ;
 int bCursorEnabled ;

void ShowCursorHercules(void)
{
    ENTER_FUNC();

    bCursorEnabled=TRUE;

    LEAVE_FUNC();
}
