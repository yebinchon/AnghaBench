
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_row; } ;


 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ isatty (int ) ;

__attribute__((used)) static int
terminal_height(void)
{
 struct winsize win;

 if (isatty(STDOUT_FILENO) == 0)
  return (-1);

 if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &win) != -1 && win.ws_row > 0)
  return (win.ws_row);

 return (-1);
}
