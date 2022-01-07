
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER_FUNC () ;
 int FRAMEBUFFER_SIZE ;
 int LEAVE_FUNC () ;
 int MmUnmapIoSpace (scalar_t__,int ) ;
 int outb_p (int ,int) ;
 scalar_t__ pScreenBufferHercules ;

void ConsoleShutdownHercules(void)
{
    ENTER_FUNC();


 outb_p(0,0x3b8);
 outb_p(0,0x3bf);

 if(pScreenBufferHercules)
  MmUnmapIoSpace(pScreenBufferHercules,FRAMEBUFFER_SIZE);

    LEAVE_FUNC();
}
