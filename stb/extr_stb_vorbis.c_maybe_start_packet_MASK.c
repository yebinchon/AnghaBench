#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int next_seg; int page_flag; int last_seg; scalar_t__ bytes_in_seg; scalar_t__ eof; } ;
typedef  TYPE_1__ vorb ;

/* Variables and functions */
 int FALSE ; 
 int PAGEFLAG_continued_packet ; 
 int /*<<< orphan*/  VORBIS_continued_packet_flag_invalid ; 
 int /*<<< orphan*/  VORBIS_missing_capture_pattern ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(vorb *f)
{
   if (f->next_seg == -1) {
      int x = FUNC1(f);
      if (f->eof) return FALSE; // EOF at page boundary is not an error!
      if (0x4f != x      ) return FUNC0(f, VORBIS_missing_capture_pattern);
      if (0x67 != FUNC1(f)) return FUNC0(f, VORBIS_missing_capture_pattern);
      if (0x67 != FUNC1(f)) return FUNC0(f, VORBIS_missing_capture_pattern);
      if (0x53 != FUNC1(f)) return FUNC0(f, VORBIS_missing_capture_pattern);
      if (!FUNC3(f)) return FALSE;
      if (f->page_flag & PAGEFLAG_continued_packet) {
         // set up enough state that we can read this packet if we want,
         // e.g. during recovery
         f->last_seg = FALSE;
         f->bytes_in_seg = 0;
         return FUNC0(f, VORBIS_continued_packet_flag_invalid);
      }
   }
   return FUNC2(f);
}