#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint32 ;
struct TYPE_6__ {unsigned int stream_len; scalar_t__ eof; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int* ogg_page_header ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 void* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static uint32 FUNC4(stb_vorbis *f, uint32 *end, uint32 *last)
{
   for(;;) {
      int n;
      if (f->eof) return 0;
      n = FUNC1(f);
      if (n == 0x4f) { // page header candidate
         unsigned int retry_loc = FUNC3(f);
         int i;
         // check if we're off the end of a file_section stream
         if (retry_loc - 25 > f->stream_len)
            return 0;
         // check the rest of the header
         for (i=1; i < 4; ++i)
            if (FUNC1(f) != ogg_page_header[i])
               break;
         if (f->eof) return 0;
         if (i == 4) {
            uint8 header[27];
            uint32 i, crc, goal, len;
            for (i=0; i < 4; ++i)
               header[i] = ogg_page_header[i];
            for (; i < 27; ++i)
               header[i] = FUNC1(f);
            if (f->eof) return 0;
            if (header[4] != 0) goto invalid;
            goal = header[22] + (header[23] << 8) + (header[24]<<16) + (header[25]<<24);
            for (i=22; i < 26; ++i)
               header[i] = 0;
            crc = 0;
            for (i=0; i < 27; ++i)
               crc = FUNC0(crc, header[i]);
            len = 0;
            for (i=0; i < header[26]; ++i) {
               int s = FUNC1(f);
               crc = FUNC0(crc, s);
               len += s;
            }
            if (len && f->eof) return 0;
            for (i=0; i < len; ++i)
               crc = FUNC0(crc, FUNC1(f));
            // finished parsing probable page
            if (crc == goal) {
               // we could now check that it's either got the last
               // page flag set, OR it's followed by the capture
               // pattern, but I guess TECHNICALLY you could have
               // a file with garbage between each ogg page and recover
               // from it automatically? So even though that paranoia
               // might decrease the chance of an invalid decode by
               // another 2^32, not worth it since it would hose those
               // invalid-but-useful files?
               if (end)
                  *end = FUNC3(f);
               if (last) {
                  if (header[5] & 0x04)
                     *last = 1;
                  else
                     *last = 0;
               }
               FUNC2(f, retry_loc-1);
               return 1;
            }
         }
        invalid:
         // not a valid page, so rewind and look for next one
         FUNC2(f, retry_loc);
      }
   }
}