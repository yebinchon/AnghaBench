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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ basis ; 
 scalar_t__* basisend ; 
 scalar_t__ current ; 
 scalar_t__* currentend ; 

void FUNC1(void){
  current = 0;
  currentend = &current;
  basis = 0;
  basisend = &basis;
  FUNC0();
  return;
}