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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timeval const**,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval const) ; 
 int /*<<< orphan*/  cc_entex ; 

void FUNC3(adns_state ads, const struct timeval *now) {
  struct timeval tv_buf;

  FUNC0(ads,0,cc_entex);
  FUNC1(ads,&now,&tv_buf);
  if (now) FUNC2(ads, 1, 0,0, *now);
  FUNC0(ads,0,cc_entex);
}