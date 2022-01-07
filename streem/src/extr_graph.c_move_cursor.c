
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int) ;

__attribute__((used)) static void
move_cursor(int row, int col)
{
  printf("\x1b[%d;%dH", row, col);
}
