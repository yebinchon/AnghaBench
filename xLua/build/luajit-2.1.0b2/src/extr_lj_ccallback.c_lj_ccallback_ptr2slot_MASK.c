#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {scalar_t__ mcode; } ;
struct TYPE_5__ {TYPE_1__ cb; } ;
typedef  scalar_t__ MSize ;
typedef  TYPE_2__ CTState ;

/* Variables and functions */
 uintptr_t CALLBACK_MCODE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

MSize FUNC2(CTState *cts, void *p)
{
  uintptr_t ofs = (uintptr_t)((uint8_t *)p -(uint8_t *)cts->cb.mcode);
  if (ofs < CALLBACK_MCODE_SIZE) {
    MSize slot = FUNC0((MSize)ofs);
    if (FUNC1(slot) == (MSize)ofs)
      return slot;
  }
  return ~0u;  /* Not a known callback function pointer. */
}