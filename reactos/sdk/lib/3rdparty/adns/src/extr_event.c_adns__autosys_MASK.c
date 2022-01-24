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
struct timeval {int dummy; } ;
typedef  TYPE_1__* adns_state ;
struct TYPE_4__ {int iflags; } ;

/* Variables and functions */
 int adns_if_noautosys ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1(adns_state ads, struct timeval now) {
  if (ads->iflags & adns_if_noautosys) return;
  FUNC0(ads);
}