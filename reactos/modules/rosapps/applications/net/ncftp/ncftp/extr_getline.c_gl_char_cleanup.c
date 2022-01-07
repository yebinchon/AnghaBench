
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSANOW ;
 int TCSETA ;
 int TIOCSETN ;
 int ioctl (int ,int ,int *) ;
 int old_termio ;
 int old_termios ;
 int old_tty ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
gl_char_cleanup(void)
{






  ioctl(0, TCSETA, &old_termio);


}
