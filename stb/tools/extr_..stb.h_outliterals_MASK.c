#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ stb_uint ;
typedef  int /*<<< orphan*/  stb_uchar ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ stb__out ; 
 int /*<<< orphan*/  stb__outfile ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(stb_uchar *in, ptrdiff_t numlit)
{
   while (numlit > 65536) {
      FUNC5(in,65536);
      in     += 65536;
      numlit -= 65536;
   }

   if      (numlit ==     0)    ;
   else if (numlit <=    32)    FUNC2 (0x000020 + (stb_uint) numlit-1);
   else if (numlit <=  2048)    FUNC3(0x000800 + (stb_uint) numlit-1);
   else /*  numlit <= 65536) */ FUNC4(0x070000 + (stb_uint) numlit-1);

   if (stb__out) {
      FUNC1(stb__out,in,numlit);
      stb__out += numlit;
   } else
      FUNC0(in, 1, numlit, stb__outfile);
}