#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ first_segment; scalar_t__ first_v_segment; int advance; int voff; } ;
typedef  TYPE_1__ chardata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* data ; 
 int h ; 
 scalar_t__* last_x ; 
 scalar_t__* last_y ; 
 int /*<<< orphan*/  segments ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vsegments ; 
 int w ; 

int FUNC3(int x, chardata *c, int offset)
{
   int start_x = x, end_x, top_y = 0, y;

   c->first_segment = FUNC2(segments);
   c->first_v_segment = FUNC2(vsegments) - offset;
   FUNC1(c->first_segment == FUNC2(segments));
   FUNC1(c->first_v_segment + offset == FUNC2(vsegments));

   // find advance distance
   end_x = x+1;
   while (data[end_x*3] == 255)
      ++end_x;
   c->advance = end_x - start_x + 1;

   last_x[0] = last_x[1] = 0;
   last_y[0] = last_y[1] = 0;

   for (y=2; y < h; ++y) {
      for (x=start_x; x < end_x; ++x) {
         if (data[y*3*w+x*3+1] < 255) {
            top_y = y;
            break;
         }
      }
      if (top_y)
         break;
   }
   c->voff = top_y > 2;
   if (top_y > 2) 
      top_y = 3;

   for (x=start_x; x < end_x; ++x) {
      int y;
      for (y=2; y < h; ++y) {
         if (data[y*3*w+x*3+1] < 255) {
            if (data[y*3*w+x*3+0] == 255) { // red
               int len=0;
               while (y+len < h && data[(y+len)*3*w+x*3+0] == 255 && data[(y+len)*3*w+x*3+1] == 0) {
                  data[(y+len)*3*w+x*3+0] = 0;
                  ++len;
               }
               FUNC0(x-start_x,y-top_y,len,0);
            }
            if (data[y*3*w+x*3+2] == 255) { // blue
               int len=0;
               while (x+len < end_x && data[y*3*w+(x+len)*3+2] == 255 && data[y*3*w+(x+len)*3+1] == 0) {
                  data[y*3*w+(x+len)*3+2] = 0;
                  ++len;
               }
               FUNC0(x-start_x,y-top_y,len,1);
            }
         }
      }
   }
   return end_x;
}