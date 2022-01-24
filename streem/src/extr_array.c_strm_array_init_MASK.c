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
 int /*<<< orphan*/  ary_length ; 
 int /*<<< orphan*/  ary_max ; 
 int /*<<< orphan*/  ary_min ; 
 int /*<<< orphan*/  ary_reverse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strm_ns_array ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(strm_state* state)
{
  strm_ns_array = FUNC1(NULL, "array");
  FUNC2(strm_ns_array, "length", FUNC0(ary_length));
  FUNC2(strm_ns_array, "reverse", FUNC0(ary_reverse));
  FUNC2(strm_ns_array, "min", FUNC0(ary_min));
  FUNC2(strm_ns_array, "max", FUNC0(ary_max));
}