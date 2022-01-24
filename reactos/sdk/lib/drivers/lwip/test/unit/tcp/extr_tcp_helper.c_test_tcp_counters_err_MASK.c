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
struct test_tcp_counters {int /*<<< orphan*/  last_err; int /*<<< orphan*/  err_calls; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(void* arg, err_t err)
{
  struct test_tcp_counters* counters = arg;
  FUNC0(arg != NULL);
  counters->err_calls++;
  counters->last_err = err;
}