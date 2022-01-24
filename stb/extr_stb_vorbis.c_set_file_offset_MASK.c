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
struct TYPE_4__ {int eof; scalar_t__ stream_start; scalar_t__ stream_end; scalar_t__ stream; unsigned int f_start; int /*<<< orphan*/  f; scalar_t__ push_mode; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(stb_vorbis *f, unsigned int loc)
{
   #ifndef STB_VORBIS_NO_PUSHDATA_API
   if (f->push_mode) return 0;
   #endif
   f->eof = 0;
   if (FUNC0(f)) {
      if (f->stream_start + loc >= f->stream_end || f->stream_start + loc < f->stream_start) {
         f->stream = f->stream_end;
         f->eof = 1;
         return 0;
      } else {
         f->stream = f->stream_start + loc;
         return 1;
      }
   }
   #ifndef STB_VORBIS_NO_STDIO
   if (loc + f->f_start < loc || loc >= 0x80000000) {
      loc = 0x7fffffff;
      f->eof = 1;
   } else {
      loc += f->f_start;
   }
   if (!FUNC1(f->f, loc, SEEK_SET))
      return 1;
   f->eof = 1;
   FUNC1(f->f, f->f_start, SEEK_END);
   return 0;
   #endif
}