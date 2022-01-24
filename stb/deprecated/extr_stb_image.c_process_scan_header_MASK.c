#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int scan_n; int* order; TYPE_4__* s; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ jpeg ;
struct TYPE_8__ {int img_n; } ;
struct TYPE_6__ {int id; int hd; int ha; } ;

/* Variables and functions */
 int FUNC0 (char*,char*) ; 
 int FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(jpeg *z)
{
   int i;
   int Ls = FUNC1(z->s);
   z->scan_n = FUNC2(z->s);
   if (z->scan_n < 1 || z->scan_n > 4 || z->scan_n > (int) z->s->img_n) return FUNC0("bad SOS component count","Corrupt JPEG");
   if (Ls != 6+2*z->scan_n) return FUNC0("bad SOS len","Corrupt JPEG");
   for (i=0; i < z->scan_n; ++i) {
      int id = FUNC2(z->s), which;
      int q = FUNC2(z->s);
      for (which = 0; which < z->s->img_n; ++which)
         if (z->img_comp[which].id == id)
            break;
      if (which == z->s->img_n) return 0;
      z->img_comp[which].hd = q >> 4;   if (z->img_comp[which].hd > 3) return FUNC0("bad DC huff","Corrupt JPEG");
      z->img_comp[which].ha = q & 15;   if (z->img_comp[which].ha > 3) return FUNC0("bad AC huff","Corrupt JPEG");
      z->order[i] = which;
   }
   if (FUNC2(z->s) != 0) return FUNC0("bad SOS","Corrupt JPEG");
   FUNC2(z->s); // should be 63, but might be 0
   if (FUNC2(z->s) != 0) return FUNC0("bad SOS","Corrupt JPEG");

   return 1;
}