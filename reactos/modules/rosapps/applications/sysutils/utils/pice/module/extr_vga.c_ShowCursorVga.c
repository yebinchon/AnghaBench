
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int TRUE ;
 int bCursorEnabled ;
 int inb_p (int) ;
 int outb_p (int,int) ;

void ShowCursorVga(void)
{
    ENTER_FUNC();

    bCursorEnabled=TRUE;

 outb_p(0x0a,0x3d4);
 outb_p(inb_p(0x3d5)&~0x20,0x3d5);

    LEAVE_FUNC();
}
