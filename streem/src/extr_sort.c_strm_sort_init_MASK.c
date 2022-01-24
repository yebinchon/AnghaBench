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
 int /*<<< orphan*/  ary_median ; 
 int /*<<< orphan*/  ary_sort ; 
 int /*<<< orphan*/  ary_sortby ; 
 int /*<<< orphan*/  exec_cmp ; 
 int /*<<< orphan*/  exec_median ; 
 int /*<<< orphan*/  exec_sort ; 
 int /*<<< orphan*/  exec_sortby ; 
 int /*<<< orphan*/  str_ge ; 
 int /*<<< orphan*/  str_gt ; 
 int /*<<< orphan*/  str_le ; 
 int /*<<< orphan*/  str_lt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strm_ns_array ; 
 int /*<<< orphan*/ * strm_ns_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC2(strm_state* state)
{
  FUNC1(strm_ns_array, "sort", FUNC0(ary_sort));
  FUNC1(strm_ns_array, "sort_by", FUNC0(ary_sortby));
  FUNC1(strm_ns_array, "median", FUNC0(ary_median));
  FUNC1(state, "cmp", FUNC0(exec_cmp));
  FUNC1(state, "sort", FUNC0(exec_sort));
  FUNC1(state, "sort_by", FUNC0(exec_sortby));
  FUNC1(state, "median", FUNC0(exec_median));

  FUNC1(strm_ns_string, "<", FUNC0(str_lt));
  FUNC1(strm_ns_string, "<=", FUNC0(str_le));
  FUNC1(strm_ns_string, ">", FUNC0(str_gt));
  FUNC1(strm_ns_string, ">=", FUNC0(str_ge));
}