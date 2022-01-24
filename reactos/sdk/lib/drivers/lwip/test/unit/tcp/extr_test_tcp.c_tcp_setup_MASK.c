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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int tcp_ticks ; 
 scalar_t__ test_tcp_timer ; 

__attribute__((used)) static void
FUNC2(void)
{
  /* reset iss to default (6510) */
  tcp_ticks = 0;
  tcp_ticks = 0 - (FUNC0() - 6510);
  FUNC0();
  tcp_ticks = 0;

  test_tcp_timer = 0;
  FUNC1();
}