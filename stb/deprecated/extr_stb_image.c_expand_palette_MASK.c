#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int stbi__uint8 ;
typedef  int stbi__uint32 ;
struct TYPE_5__ {int* out; TYPE_1__* s; } ;
typedef  TYPE_2__ png ;
struct TYPE_4__ {int img_x; int img_y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(png *a, stbi__uint8 *palette, int len, int pal_img_n)
{
   stbi__uint32 i, pixel_count = a->s->img_x * a->s->img_y;
   stbi__uint8 *p, *temp_out, *orig = a->out;

   p = (stbi__uint8 *) FUNC3(pixel_count * pal_img_n);
   if (p == NULL) return FUNC1("outofmem", "Out of memory");

   // between here and free(out) below, exitting would leak
   temp_out = p;

   if (pal_img_n == 3) {
      for (i=0; i < pixel_count; ++i) {
         int n = orig[i]*4;
         p[0] = palette[n  ];
         p[1] = palette[n+1];
         p[2] = palette[n+2];
         p += 3;
      }
   } else {
      for (i=0; i < pixel_count; ++i) {
         int n = orig[i]*4;
         p[0] = palette[n  ];
         p[1] = palette[n+1];
         p[2] = palette[n+2];
         p[3] = palette[n+3];
         p += 4;
      }
   }
   FUNC2(a->out);
   a->out = temp_out;

   FUNC0(len);

   return 1;
}