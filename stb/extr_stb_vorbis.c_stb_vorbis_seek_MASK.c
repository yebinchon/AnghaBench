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
typedef  unsigned int uint32 ;
struct TYPE_5__ {unsigned int current_loc; scalar_t__ channel_buffer_start; scalar_t__ channel_buffer_end; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 

int FUNC3(stb_vorbis *f, unsigned int sample_number)
{
   if (!FUNC2(f, sample_number))
      return 0;

   if (sample_number != f->current_loc) {
      int n;
      uint32 frame_start = f->current_loc;
      FUNC1(f, &n, NULL);
      FUNC0(sample_number > frame_start);
      FUNC0(f->channel_buffer_start + (int) (sample_number-frame_start) <= f->channel_buffer_end);
      f->channel_buffer_start += (sample_number - frame_start);
   }

   return 1;
}