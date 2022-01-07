
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen {int dummy; } ;


 int screen_hsize (struct screen*) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;

__attribute__((used)) static void
window_copy_move_right(struct screen *s, u_int *fx, u_int *fy, int wrapflag)
{
 if (*fx == screen_size_x(s) - 1) {
  if (*fy == screen_hsize(s) + screen_size_y(s)) {
   if (wrapflag) {
    *fx = 0;
    *fy = 0;
   }
   return;
  }
  *fx = 0;
  *fy = *fy + 1;
 } else
  *fx = *fx + 1;
}
