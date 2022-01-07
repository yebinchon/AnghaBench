
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MB_OK ;
 int MessageBeep (int ) ;
 int gl_putc (char) ;

__attribute__((used)) static void
gl_beep(void)
{



 gl_putc('\007');

}
