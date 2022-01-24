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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

int     FUNC1(FILE *f, int b, stb_uint n)
{
   unsigned int v=0;
   if (n > (1 << 24)) v += FUNC0(f) << 24;
   if (n > (1 << 16)) v += FUNC0(f) << 16;
   if (n > (1 <<  8)) v += FUNC0(f) <<  8;
   v += FUNC0(f);
   return b+v;
}