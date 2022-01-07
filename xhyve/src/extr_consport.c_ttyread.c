
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int read (int ,char*,int) ;
 scalar_t__ tty_char_available () ;

__attribute__((used)) static int
ttyread(void)
{
 char rb;

 if (tty_char_available()) {
  read(STDIN_FILENO, &rb, 1);
  return (rb & 0xff);
 } else {
  return (-1);
 }
}
