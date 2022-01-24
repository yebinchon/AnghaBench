#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ alloc_buffer_length_in_bytes; scalar_t__ alloc_buffer; } ;
struct TYPE_11__ {scalar_t__ temp_offset; int mode_count; int blocksize_1; int blocksize_0; TYPE_3__* mode_config; TYPE_1__ alloc; scalar_t__ eof; scalar_t__ channel_buffer_end; scalar_t__ channel_buffer_start; } ;
typedef  TYPE_2__ vorb ;
struct TYPE_12__ {scalar_t__ blockflag; } ;
typedef  TYPE_3__ Mode ;

/* Variables and functions */
 int EOP ; 
 int FALSE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int TRUE ; 
 int /*<<< orphan*/  VORBIS_bad_packet_type ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(vorb *f, int *p_left_start, int *p_left_end, int *p_right_start, int *p_right_end, int *mode)
{
   Mode *m;
   int i, n, prev, next, window_center;
   f->channel_buffer_start = f->channel_buffer_end = 0;

  retry:
   if (f->eof) return FALSE;
   if (!FUNC6(f))
      return FALSE;
   // check packet type
   if (FUNC4(f,1) != 0) {
      if (FUNC0(f))
         return FUNC2(f,VORBIS_bad_packet_type);
      while (EOP != FUNC3(f));
      goto retry;
   }

   if (f->alloc.alloc_buffer)
      FUNC1(f->alloc.alloc_buffer_length_in_bytes == f->temp_offset);

   i = FUNC4(f, FUNC5(f->mode_count-1));
   if (i == EOP) return FALSE;
   if (i >= f->mode_count) return FALSE;
   *mode = i;
   m = f->mode_config + i;
   if (m->blockflag) {
      n = f->blocksize_1;
      prev = FUNC4(f,1);
      next = FUNC4(f,1);
   } else {
      prev = next = 0;
      n = f->blocksize_0;
   }

// WINDOWING

   window_center = n >> 1;
   if (m->blockflag && !prev) {
      *p_left_start = (n - f->blocksize_0) >> 2;
      *p_left_end   = (n + f->blocksize_0) >> 2;
   } else {
      *p_left_start = 0;
      *p_left_end   = window_center;
   }
   if (m->blockflag && !next) {
      *p_right_start = (n*3 - f->blocksize_0) >> 2;
      *p_right_end   = (n*3 + f->blocksize_0) >> 2;
   } else {
      *p_right_start = window_center;
      *p_right_end   = n;
   }

   return TRUE;
}