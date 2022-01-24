#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,short*,int /*<<< orphan*/ ,float**,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,float***) ; 
 int FUNC2 (TYPE_1__*,int,short**,int) ; 

int FUNC3(stb_vorbis *f, int num_c, short *buffer, int num_shorts)
{
   float **output;
   int len;
   if (num_c == 1) return FUNC2(f,num_c,&buffer, num_shorts);
   len = FUNC1(f, NULL, &output);
   if (len) {
      if (len*num_c > num_shorts) len = num_shorts / num_c;
      FUNC0(num_c, buffer, f->channels, output, 0, len);
   }
   return len;
}