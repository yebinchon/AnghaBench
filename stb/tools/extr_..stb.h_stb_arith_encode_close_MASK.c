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
typedef  int /*<<< orphan*/  stbfile ;
struct TYPE_5__ {int range_low; int /*<<< orphan*/ * output; } ;
typedef  TYPE_1__ stb_arith ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

stbfile *FUNC2(stb_arith *a)
{
   // put exactly as many bytes as we'll read, so we can turn on/off arithmetic coding in a stream
   FUNC1(a, a->range_low >> 24);
   FUNC1(a, a->range_low >> 16);
   FUNC1(a, a->range_low >>  8);
   FUNC1(a, a->range_low >>  0);
   FUNC0(a);
   return a->output;
}