#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_17__ {unsigned int last_decoded_sample; int page_end; int page_start; } ;
struct TYPE_16__ {int blocksize_1; int blocksize_0; int end_seg_with_known_loc; int* segments; int page_flag; int segment_count; int next_seg; scalar_t__ current_loc; scalar_t__ previous_length; scalar_t__ bytes_in_seg; scalar_t__ packet_bytes; scalar_t__ valid_bits; void* last_seg; void* current_loc_valid; TYPE_2__ p_last; TYPE_2__ p_first; } ;
typedef  TYPE_1__ stb_vorbis ;
typedef  TYPE_2__ ProbedPage ;

/* Variables and functions */
 void* FALSE ; 
 int PAGEFLAG_continued_packet ; 
 int /*<<< orphan*/  VORBIS_seek_failed ; 
 int /*<<< orphan*/  VORBIS_seek_invalid ; 
 int /*<<< orphan*/  VORBIS_seek_without_length ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(stb_vorbis *f, uint32 sample_number)
{
   ProbedPage left, right, mid;
   int i, start_seg_with_known_loc, end_pos, page_start;
   uint32 delta, stream_length, padding;
   double offset, bytes_per_sample;
   int probe = 0;

   // find the last page and validate the target sample
   stream_length = FUNC9(f);
   if (stream_length == 0)            return FUNC1(f, VORBIS_seek_without_length);
   if (sample_number > stream_length) return FUNC1(f, VORBIS_seek_invalid);

   // this is the maximum difference between the window-center (which is the
   // actual granule position value), and the right-start (which the spec
   // indicates should be the granule position (give or take one)).
   padding = ((f->blocksize_1 - f->blocksize_0) >> 2);
   if (sample_number < padding)
      sample_number = 0;
   else
      sample_number -= padding;

   left = f->p_first;
   while (left.last_decoded_sample == ~0U) {
      // (untested) the first page does not have a 'last_decoded_sample'
      FUNC4(f, left.page_end);
      if (!FUNC2(f, &left)) goto error;
   }

   right = f->p_last;
   FUNC0(right.last_decoded_sample != ~0U);

   // starting from the start is handled differently
   if (sample_number <= left.last_decoded_sample) {
      if (FUNC8(f))
         return 1;
      return 0;
   }

   while (left.page_end != right.page_start) {
      FUNC0(left.page_end < right.page_start);
      // search range in bytes
      delta = right.page_start - left.page_end;
      if (delta <= 65536) {
         // there's only 64K left to search - handle it linearly
         FUNC4(f, left.page_end);
      } else {
         if (probe < 2) {
            if (probe == 0) {
               // first probe (interpolate)
               double data_bytes = right.page_end - left.page_start;
               bytes_per_sample = data_bytes / right.last_decoded_sample;
               offset = left.page_start + bytes_per_sample * (sample_number - left.last_decoded_sample);
            } else {
               // second probe (try to bound the other side)
               double error = ((double) sample_number - mid.last_decoded_sample) * bytes_per_sample;
               if (error >= 0 && error <  8000) error =  8000;
               if (error <  0 && error > -8000) error = -8000;
               offset += error * 2;
            }

            // ensure the offset is valid
            if (offset < left.page_end)
               offset = left.page_end;
            if (offset > right.page_start - 65536)
               offset = right.page_start - 65536;

            FUNC4(f, (unsigned int) offset);
         } else {
            // binary search for large ranges (offset by 32K to ensure
            // we don't hit the right page)
            FUNC4(f, left.page_end + (delta / 2) - 32768);
         }

         if (!FUNC10(f, NULL, NULL)) goto error;
      }

      for (;;) {
         if (!FUNC2(f, &mid)) goto error;
         if (mid.last_decoded_sample != ~0U) break;
         // (untested) no frames end on this page
         FUNC4(f, mid.page_end);
         FUNC0(mid.page_start < right.page_start);
      }

      // if we've just found the last page again then we're in a tricky file,
      // and we're close enough.
      if (mid.page_start == right.page_start)
         break;

      if (sample_number < mid.last_decoded_sample)
         right = mid;
      else
         left = mid;

      ++probe;
   }

   // seek back to start of the last packet
   page_start = left.page_start;
   FUNC4(f, page_start);
   if (!FUNC6(f)) return FUNC1(f, VORBIS_seek_failed);
   end_pos = f->end_seg_with_known_loc;
   FUNC0(end_pos >= 0);

   for (;;) {
      for (i = end_pos; i > 0; --i)
         if (f->segments[i-1] != 255)
            break;

      start_seg_with_known_loc = i;

      if (start_seg_with_known_loc > 0 || !(f->page_flag & PAGEFLAG_continued_packet))
         break;

      // (untested) the final packet begins on an earlier page
      if (!FUNC3(f, page_start))
         goto error;

      page_start = FUNC7(f);
      if (!FUNC6(f)) goto error;
      end_pos = f->segment_count - 1;
   }

   // prepare to start decoding
   f->current_loc_valid = FALSE;
   f->last_seg = FALSE;
   f->valid_bits = 0;
   f->packet_bytes = 0;
   f->bytes_in_seg = 0;
   f->previous_length = 0;
   f->next_seg = start_seg_with_known_loc;

   for (i = 0; i < start_seg_with_known_loc; i++)
      FUNC5(f, f->segments[i]);

   // start decoding (optimizable - this frame is generally discarded)
   if (!FUNC11(f))
      return 0;
   if (f->current_loc > sample_number)
      return FUNC1(f, VORBIS_seek_failed);
   return 1;

error:
   // try to restore the file to a valid state
   FUNC8(f);
   return FUNC1(f, VORBIS_seek_failed);
}