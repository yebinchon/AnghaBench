#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_10__ {int current_loc_valid; unsigned int current_loc; int blocksize_1; int blocksize_0; scalar_t__ previous_length; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VORBIS_invalid_api_mixing ; 
 int /*<<< orphan*/  VORBIS_seek_failed ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int FUNC8(stb_vorbis *f, unsigned int sample_number)
{
   uint32 max_frame_samples;

   if (FUNC0(f)) return FUNC2(f, VORBIS_invalid_api_mixing);

   // fast page-level search
   if (!FUNC6(f, sample_number))
      return 0;

   FUNC1(f->current_loc_valid);
   FUNC1(f->current_loc <= sample_number);

   // linear search for the relevant packet
   max_frame_samples = (f->blocksize_1*3 - f->blocksize_0) >> 2;
   while (f->current_loc < sample_number) {
      int left_start, left_end, right_start, right_end, mode, frame_samples;
      if (!FUNC5(f, &left_start, &left_end, &right_start, &right_end, &mode))
         return FUNC2(f, VORBIS_seek_failed);
      // calculate the number of samples returned by the next frame
      frame_samples = right_start - left_start;
      if (f->current_loc + frame_samples > sample_number) {
         return 1; // the next frame will contain the sample
      } else if (f->current_loc + frame_samples + max_frame_samples > sample_number) {
         // there's a chance the frame after this could contain the sample
         FUNC7(f);
      } else {
         // this frame is too early to be relevant
         f->current_loc += frame_samples;
         f->previous_length = 0;
         FUNC4(f);
         FUNC3(f);
      }
   }
   // the next frame will start with the sample
   FUNC1(f->current_loc == sample_number);
   return 1;
}