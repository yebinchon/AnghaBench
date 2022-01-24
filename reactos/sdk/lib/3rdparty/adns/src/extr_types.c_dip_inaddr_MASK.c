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
struct in_addr {int dummy; } ;
typedef  TYPE_1__* adns_state ;
struct TYPE_4__ {int /*<<< orphan*/  nsortlist; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct in_addr) ; 

__attribute__((used)) static int FUNC1(adns_state ads, struct in_addr a, struct in_addr b) {
  int ai, bi;

  if (!ads->nsortlist) return 0;

  ai= FUNC0(ads,a);
  bi= FUNC0(ads,b);
  return bi<ai;
}