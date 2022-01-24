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
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int /*<<< orphan*/  ary_avg ; 
 int /*<<< orphan*/  ary_correl ; 
 int /*<<< orphan*/  ary_stdev ; 
 int /*<<< orphan*/  ary_sum ; 
 int /*<<< orphan*/  ary_var ; 
 int /*<<< orphan*/  exec_avg ; 
 int /*<<< orphan*/  exec_correl ; 
 int /*<<< orphan*/  exec_mean_stdev ; 
 int /*<<< orphan*/  exec_mean_variance ; 
 int /*<<< orphan*/  exec_mvavg ; 
 int /*<<< orphan*/  exec_stdev ; 
 int /*<<< orphan*/  exec_sum ; 
 int /*<<< orphan*/  exec_variance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strm_ns_array ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(strm_state* state)
{
  FUNC3(state, "sum", FUNC0(exec_sum));
  FUNC3(state, "average", FUNC0(exec_avg));
  FUNC3(state, "mean", FUNC0(exec_avg));
  FUNC3(state, "moving_average", FUNC0(exec_mvavg));
  FUNC3(state, "rolling_mean", FUNC0(exec_mvavg));
  FUNC3(state, "stdev", FUNC0(exec_stdev));
  FUNC3(state, "variance", FUNC0(exec_variance));
  FUNC3(state, "mean_stdev", FUNC0(exec_mean_stdev));
  FUNC3(state, "mean_variance", FUNC0(exec_mean_variance));
  FUNC3(state, "correl", FUNC0(exec_correl));

  FUNC3(strm_ns_array, "sum", FUNC0(ary_sum));
  FUNC3(strm_ns_array, "average", FUNC0(ary_avg));
  FUNC3(strm_ns_array, "stdev", FUNC0(ary_stdev));
  FUNC3(strm_ns_array, "variance", FUNC0(ary_var));
  FUNC3(strm_ns_array, "correl", FUNC0(ary_correl));

  FUNC1(state);
  FUNC2(state);
}