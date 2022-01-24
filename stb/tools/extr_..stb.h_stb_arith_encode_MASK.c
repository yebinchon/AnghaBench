#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int range_high; unsigned int range_low; } ;
typedef  TYPE_1__ stb_arith ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(stb_arith *a, unsigned int totalfreq, unsigned int freq, unsigned int cumfreq)
{
   unsigned int range = a->range_high - a->range_low;
   unsigned int old = a->range_low;
   range /= totalfreq;
   a->range_low += range * cumfreq;
   a->range_high = a->range_low + range*freq;
   if (a->range_low < old)
      FUNC0(a);
   while (a->range_high - a->range_low < 0x1000000)
      FUNC1(a);
}