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
 int /*<<< orphan*/  ary_each ; 
 int /*<<< orphan*/  ary_flatmap ; 
 int /*<<< orphan*/  ary_map ; 
 int /*<<< orphan*/  exec_consec ; 
 int /*<<< orphan*/  exec_count ; 
 int /*<<< orphan*/  exec_cycle ; 
 int /*<<< orphan*/  exec_drop ; 
 int /*<<< orphan*/  exec_each ; 
 int /*<<< orphan*/  exec_filter ; 
 int /*<<< orphan*/  exec_flatmap ; 
 int /*<<< orphan*/  exec_map ; 
 int /*<<< orphan*/  exec_max ; 
 int /*<<< orphan*/  exec_min ; 
 int /*<<< orphan*/  exec_rbk ; 
 int /*<<< orphan*/  exec_reduce ; 
 int /*<<< orphan*/  exec_repeat ; 
 int /*<<< orphan*/  exec_seq ; 
 int /*<<< orphan*/  exec_slice ; 
 int /*<<< orphan*/  exec_take ; 
 int /*<<< orphan*/  exec_uniq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strm_ns_array ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(strm_state* state)
{
  FUNC2(state, "seq", FUNC0(exec_seq));
  FUNC2(state, "repeat", FUNC0(exec_repeat));
  FUNC2(state, "cycle", FUNC0(exec_cycle));
  FUNC2(state, "each", FUNC0(exec_each));
  FUNC2(state, "map", FUNC0(exec_map));
  FUNC2(state, "flatmap", FUNC0(exec_flatmap));
  FUNC2(state, "filter", FUNC0(exec_filter));
  FUNC2(state, "count", FUNC0(exec_count));
  FUNC2(state, "min", FUNC0(exec_min));
  FUNC2(state, "max", FUNC0(exec_max));
  FUNC2(state, "reduce", FUNC0(exec_reduce));
  FUNC2(state, "reduce_by_key", FUNC0(exec_rbk));

  FUNC2(state, "slice", FUNC0(exec_slice));
  FUNC2(state, "consec", FUNC0(exec_consec));
  FUNC2(state, "take", FUNC0(exec_take));
  FUNC2(state, "drop", FUNC0(exec_drop));
  FUNC2(state, "uniq", FUNC0(exec_uniq));

  FUNC2(strm_ns_array, "each", FUNC0(ary_each));
  FUNC2(strm_ns_array, "map", FUNC0(ary_map));
  FUNC2(strm_ns_array, "flatmap", FUNC0(ary_flatmap));
  FUNC1(state);
}