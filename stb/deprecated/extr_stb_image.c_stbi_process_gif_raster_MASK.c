#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int prefix; int first; int suffix; } ;
typedef  TYPE_1__ stbi_gif_lzw ;
struct TYPE_6__ {int* out; TYPE_1__* codes; } ;
typedef  TYPE_2__ stbi_gif ;
typedef  int stbi__uint8 ;
typedef  int stbi__uint32 ;
typedef  int /*<<< orphan*/  stbi__uint16 ;
typedef  int stbi__int32 ;
typedef  int stbi__int16 ;
typedef  int /*<<< orphan*/  stbi ;

/* Variables and functions */
 int* FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static stbi__uint8 *FUNC5(stbi *s, stbi_gif *g)
{
   stbi__uint8 lzw_cs;
   stbi__int32 len, code;
   stbi__uint32 first;
   stbi__int32 codesize, codemask, avail, oldcode, bits, valid_bits, clear;
   stbi_gif_lzw *p;

   lzw_cs = FUNC2(s);
   clear = 1 << lzw_cs;
   first = 1;
   codesize = lzw_cs + 1;
   codemask = (1 << codesize) - 1;
   bits = 0;
   valid_bits = 0;
   for (code = 0; code < clear; code++) {
      g->codes[code].prefix = -1;
      g->codes[code].first = (stbi__uint8) code;
      g->codes[code].suffix = (stbi__uint8) code;
   }

   // support no starting clear code
   avail = clear+2;
   oldcode = -1;

   len = 0;
   for(;;) {
      if (valid_bits < codesize) {
         if (len == 0) {
            len = FUNC1(s); // start new block
            if (len == 0) 
               return g->out;
         }
         --len;
         bits |= (stbi__int32) FUNC1(s) << valid_bits;
         valid_bits += 8;
      } else {
         stbi__int32 code = bits & codemask;
         bits >>= codesize;
         valid_bits -= codesize;
         // @OPTIMIZE: is there some way we can accelerate the non-clear path?
         if (code == clear) {  // clear code
            codesize = lzw_cs + 1;
            codemask = (1 << codesize) - 1;
            avail = clear + 2;
            oldcode = -1;
            first = 0;
         } else if (code == clear + 1) { // end of stream code
            FUNC3(s, len);
            while ((len = FUNC1(s)) > 0)
               FUNC3(s,len);
            return g->out;
         } else if (code <= avail) {
            if (first) return FUNC0("no clear code", "Corrupt GIF");

            if (oldcode >= 0) {
               p = &g->codes[avail++];
               if (avail > 4096)        return FUNC0("too many codes", "Corrupt GIF");
               p->prefix = (stbi__int16) oldcode;
               p->first = g->codes[oldcode].first;
               p->suffix = (code == avail) ? p->first : g->codes[code].first;
            } else if (code == avail)
               return FUNC0("illegal code in raster", "Corrupt GIF");

            FUNC4(g, (stbi__uint16) code);

            if ((avail & codemask) == 0 && avail <= 0x0FFF) {
               codesize++;
               codemask = (1 << codesize) - 1;
            }

            oldcode = code;
         } else {
            return FUNC0("illegal code in raster", "Corrupt GIF");
         }
      } 
   }
}