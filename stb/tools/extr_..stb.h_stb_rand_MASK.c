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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int STB__MT_IA ; 
 int STB__MT_IB ; 
 int STB__MT_LEN ; 
 unsigned int FUNC1 (unsigned int*,int,int) ; 
 unsigned int* stb__mt_buffer ; 
 int stb__mt_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

unsigned int FUNC3()
{
   unsigned int  * b = stb__mt_buffer;
   int idx = stb__mt_index;
   unsigned int  s,r;
   int i;
	
   if (idx >= STB__MT_LEN*sizeof(unsigned int)) {
      if (idx > STB__MT_LEN*sizeof(unsigned int))
         FUNC2(0);
      idx = 0;
      i = 0;
      for (; i < STB__MT_IB; i++) {
         s = FUNC1(b, i, i+1);
         b[i] = b[i + STB__MT_IA] ^ (s >> 1) ^ FUNC0(s);
      }
      for (; i < STB__MT_LEN-1; i++) {
         s = FUNC1(b, i, i+1);
         b[i] = b[i - STB__MT_IB] ^ (s >> 1) ^ FUNC0(s);
      }
      
      s = FUNC1(b, STB__MT_LEN-1, 0);
      b[STB__MT_LEN-1] = b[STB__MT_IA-1] ^ (s >> 1) ^ FUNC0(s);
   }
   stb__mt_index = idx + sizeof(unsigned int);
   
   r = *(unsigned int *)((unsigned char *)b + idx);
   
   r ^= (r >> 11);
   r ^= (r << 7) & 0x9D2C5680;
   r ^= (r << 15) & 0xEFC60000;
   r ^= (r >> 18);
   
   return r;
}