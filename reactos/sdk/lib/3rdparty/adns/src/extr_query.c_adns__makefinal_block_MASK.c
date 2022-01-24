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
typedef  int /*<<< orphan*/  adns_query ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 

void FUNC2(adns_query qu, void **blpp, size_t sz) {
  void *before, *after;

  before= *blpp;
  if (!before) return;
  after= FUNC0(qu,sz);
  FUNC1(after,before, (size_t) sz);
  *blpp= after;
}