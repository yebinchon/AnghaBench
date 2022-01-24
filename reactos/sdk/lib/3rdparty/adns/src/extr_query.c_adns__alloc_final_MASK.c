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
typedef  int /*<<< orphan*/  byte ;
typedef  TYPE_1__* adns_query ;
struct TYPE_3__ {scalar_t__ interim_allocd; int /*<<< orphan*/ * final_allocspace; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void *FUNC2(adns_query qu, size_t sz) {
  /* When we're in the _final stage, we _subtract_ from interim_alloc'd
   * each allocation, and use final_allocspace to point to the next free
   * bit.
   */
  void *rp;

  sz= FUNC0(sz);
  rp= qu->final_allocspace;
  FUNC1(rp);
  qu->interim_allocd -= sz;
  FUNC1(qu->interim_allocd>=0);
  qu->final_allocspace= (byte*)rp + sz;
  return rp;
}