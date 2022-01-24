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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

unsigned int FUNC1(FILE *f)
{
   unsigned int z;
   unsigned char d;
   d = FUNC0(f);

   if (d >= 0x80) {
      if (d >= 0xc0) {
         if (d >= 0xe0) {
            if (d == 0xf0) z = FUNC0(f) << 24;
            else           z = (d - 0xe0) << 24;
            z += FUNC0(f) << 16;
         }
         else
            z = (d - 0xc0) << 16;
         z += FUNC0(f) << 8;
      } else
         z = (d - 0x80) <<  8;
      z += FUNC0(f);
   } else
      z = d;
   return z;
}