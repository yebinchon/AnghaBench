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
struct TYPE_4__ {int channels; int channel_buffer_end; int channel_buffer_start; int /*<<< orphan*/  channel_buffers; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,short*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,float***) ; 

int FUNC2(stb_vorbis *f, int channels, short *buffer, int num_shorts)
{
   float **outputs;
   int len = num_shorts / channels;
   int n=0;
   int z = f->channels;
   if (z > channels) z = channels;
   while (n < len) {
      int k = f->channel_buffer_end - f->channel_buffer_start;
      if (n+k >= len) k = len - n;
      if (k)
         FUNC0(channels, buffer, f->channels, f->channel_buffers, f->channel_buffer_start, k);
      buffer += k*channels;
      n += k;
      f->channel_buffer_start += k;
      if (n == len) break;
      if (!FUNC1(f, NULL, &outputs)) break;
   }
   return n;
}