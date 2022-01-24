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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,float,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  temp ; 

__attribute__((used)) static void FUNC3(short *dest, float *src, int len)
{
   int i;
   FUNC2();
   for (i=0; i < len; ++i) {
      FUNC0(temp);
      int v = FUNC1(temp, src[i],15);
      if ((unsigned int) (v + 32768) > 65535)
         v = v < 0 ? -32768 : 32767;
      dest[i] = v;
   }
}