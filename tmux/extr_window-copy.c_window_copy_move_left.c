
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen {int dummy; } ;


 scalar_t__ screen_hsize (struct screen*) ;
 scalar_t__ screen_size_x (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;

__attribute__((used)) static void
window_copy_move_left(struct screen *s, u_int *fx, u_int *fy, int wrapflag)
{
 if (*fx == 0) {
  if (*fy == 0) {
   if (wrapflag) {
    *fx = screen_size_x(s) - 1;
    *fy = screen_hsize(s) + screen_size_y(s);
   }
   return;
  }
  *fx = screen_size_x(s) - 1;
  *fy = *fy - 1;
 } else
  *fx = *fx - 1;
}
