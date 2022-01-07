
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int FALSE ;
 int LEAVE_FUNC () ;
 int bCursorEnabled ;

void HideCursorHercules(void)
{
    ENTER_FUNC();

    bCursorEnabled=FALSE;

    LEAVE_FUNC();
}
