
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dx; int y; int len; } ;
typedef TYPE_1__ segment ;


 int LEN_LIMIT ;
 int X_LIMIT ;
 int assert (int) ;
 int* last_x ;
 int non_empty ;
 int * num_seg ;
 int segments ;
 int stb_arr_push (int ,TYPE_1__) ;
 int vsegments ;

void add_seg(int x, int y, int len, int horizontal)
{
   segment s;

   while (x - last_x[horizontal] > X_LIMIT) {
      add_seg(last_x[horizontal] + X_LIMIT, 0, 0, horizontal);
   }
   while (len > LEN_LIMIT) {
      add_seg(x, y, LEN_LIMIT, horizontal);
      len -= LEN_LIMIT;
      x += LEN_LIMIT*horizontal;
      y += LEN_LIMIT*!horizontal;
   }

   s.dx = x - last_x[horizontal];
   s.y = y;
   s.len = len;
   non_empty += len != 0;

   assert(s.y == y);
   assert(s.len == len);
   ++num_seg[horizontal];
   if (horizontal)
      stb_arr_push(segments, s);
   else
      stb_arr_push(vsegments, s);
   last_x[horizontal] = x;
}
