#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_4__ {int Low; int Range; } ;
typedef  TYPE_1__ CPpmd7z_RangeEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int kTopValue ; 

__attribute__((used)) static void FUNC1(CPpmd7z_RangeEnc *p, UInt32 start, UInt32 size, UInt32 total)
{
  p->Low += start * (p->Range /= total);
  p->Range *= size;
  while (p->Range < kTopValue)
  {
    p->Range <<= 8;
    FUNC0(p);
  }
}