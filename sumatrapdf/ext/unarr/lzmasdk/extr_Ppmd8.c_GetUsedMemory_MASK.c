#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt32 ;
struct TYPE_3__ {int* Stamps; int Size; scalar_t__ Text; scalar_t__ UnitsStart; scalar_t__ LoUnit; scalar_t__ HiUnit; } ;
typedef  TYPE_1__ CPpmd8 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int PPMD_NUM_INDEXES ; 
 int FUNC1 (int) ; 

__attribute__((used)) static UInt32 FUNC2(const CPpmd8 *p)
{
  UInt32 v = 0;
  unsigned i;
  for (i = 0; i < PPMD_NUM_INDEXES; i++)
    v += p->Stamps[i] * FUNC0(i);
  return p->Size - (UInt32)(p->HiUnit - p->LoUnit) - (UInt32)(p->UnitsStart - p->Text) - FUNC1(v);
}