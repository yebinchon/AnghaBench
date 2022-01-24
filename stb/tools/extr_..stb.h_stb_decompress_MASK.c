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
typedef  int stb_uint ;
typedef  int stb_uchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* stb__barrier ; 
 int* stb__barrier2 ; 
 int* stb__barrier3 ; 
 int* stb__barrier4 ; 
 int* stb__dout ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int*,int) ; 
 int FUNC3 (int*) ; 
 int* FUNC4 (int*) ; 

stb_uint FUNC5(stb_uchar *output, stb_uchar *i, stb_uint length)
{
   stb_uint olen;
   if (FUNC1(0) != 0x57bC0000) return 0;
   if (FUNC1(4) != 0)          return 0; // error! stream is > 4GB
   olen = FUNC3(i);
   stb__barrier2 = i;
   stb__barrier3 = i+length;
   stb__barrier = output + olen;
   stb__barrier4 = output;
   i += 16;

   stb__dout = output;
   while (1) {
      stb_uchar *old_i = i;
      i = FUNC4(i);
      if (i == old_i) {
         if (*i == 0x05 && i[1] == 0xfa) {
            FUNC0(stb__dout == output + olen);
            if (stb__dout != output + olen) return 0;
            if (FUNC2(1, output, olen) != (stb_uint) FUNC1(2))
               return 0;
            return olen;
         } else {
            FUNC0(0); /* NOTREACHED */
            return 0;
         }
      }
      FUNC0(stb__dout <= output + olen); 
      if (stb__dout > output + olen)
         return 0;
   }
}