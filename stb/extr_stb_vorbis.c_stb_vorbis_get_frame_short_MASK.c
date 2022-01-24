#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,short**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float**,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,float***) ; 

int FUNC2(stb_vorbis *f, int num_c, short **buffer, int num_samples)
{
   float **output;
   int len = FUNC1(f, NULL, &output);
   if (len > num_samples) len = num_samples;
   if (len)
      FUNC0(num_c, buffer, 0, f->channels, output, 0, len);
   return len;
}