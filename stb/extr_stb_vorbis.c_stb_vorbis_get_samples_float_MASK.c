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
struct TYPE_4__ {int channels; int channel_buffer_end; int channel_buffer_start; int* channel_buffers; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,float***) ; 

int FUNC3(stb_vorbis *f, int channels, float **buffer, int num_samples)
{
   float **outputs;
   int n=0;
   int z = f->channels;
   if (z > channels) z = channels;
   while (n < num_samples) {
      int i;
      int k = f->channel_buffer_end - f->channel_buffer_start;
      if (n+k >= num_samples) k = num_samples - n;
      if (k) {
         for (i=0; i < z; ++i)
            FUNC0(buffer[i]+n, f->channel_buffers[i]+f->channel_buffer_start, sizeof(float)*k);
         for (   ; i < channels; ++i)
            FUNC1(buffer[i]+n, 0, sizeof(float) * k);
      }
      n += k;
      f->channel_buffer_start += k;
      if (n == num_samples)
         break;
      if (!FUNC2(f, NULL, &outputs))
         break;
   }
   return n;
}