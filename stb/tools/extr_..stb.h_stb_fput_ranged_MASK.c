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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void    FUNC2(FILE *f, int v, int b, stb_uint n)
{
   v -= b;
   if (n <= (1 << 31))
      FUNC0((stb_uint) v < n);
   if (n > (1 << 24)) FUNC1(v >> 24, f);
   if (n > (1 << 16)) FUNC1(v >> 16, f);
   if (n > (1 <<  8)) FUNC1(v >>  8, f);
   FUNC1(v,f);
}