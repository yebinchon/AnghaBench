
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _getch () ;
 int _putch (int) ;
 scalar_t__ char_avail ;

int _getche(void)
{
  if (char_avail)
    return(_getch());
  return (_putch(_getch()));
}
