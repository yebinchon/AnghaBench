
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ isatty (int ) ;

__attribute__((used)) static int
get_columns(void)
{
 struct winsize ws;
 int columns = 80;
 int error;

 if (isatty(STDOUT_FILENO)) {
  error = ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws);
  if (error == 0)
   columns = ws.ws_col;
 } else {
  columns = 999;
 }

 return (columns);
}
