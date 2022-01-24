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
typedef  int uint64_t ;
struct timeval {long tv_sec; int tv_usec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct timeval *tv) {
  uint64_t ns, sns;

  ns = FUNC0(FUNC1());

  sns = (ns / 1000000000);
  tv->tv_sec = (long) sns;
  tv->tv_usec = (int) ((ns - sns) / 1000);
}