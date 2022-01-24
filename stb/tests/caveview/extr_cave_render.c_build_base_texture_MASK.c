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
typedef  int uint32 ;

/* Variables and functions */
 int TEX_SIZE ; 
 int FUNC0 () ; 
 int** texture ; 

void FUNC1(int n)
{
   int x,y;
   uint32 color = FUNC0() | 0x808080;
   for (y=0; y<TEX_SIZE; ++y)
      for (x=0; x<TEX_SIZE; ++x) {
         texture[y][x] = (color + (FUNC0()&0x1f1f1f))|0xff000000;
      }
}