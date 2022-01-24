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
 int /*<<< orphan*/  num_bar ; 
 int /*<<< orphan*/  num_div ; 
 int /*<<< orphan*/  num_ge ; 
 int /*<<< orphan*/  num_gt ; 
 int /*<<< orphan*/  num_le ; 
 int /*<<< orphan*/  num_lt ; 
 int /*<<< orphan*/  num_minus ; 
 int /*<<< orphan*/  num_mod ; 
 int /*<<< orphan*/  num_mult ; 
 int /*<<< orphan*/  num_number ; 
 int /*<<< orphan*/  num_plus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * strm_ns_number ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(strm_state* state)
{
  strm_ns_number = FUNC1(NULL, "number");
  FUNC2(strm_ns_number, "+", FUNC0(num_plus));
  FUNC2(strm_ns_number, "-", FUNC0(num_minus));
  FUNC2(strm_ns_number, "*", FUNC0(num_mult));
  FUNC2(strm_ns_number, "/", FUNC0(num_div));
  FUNC2(strm_ns_number, "%", FUNC0(num_mod));
  FUNC2(strm_ns_number, "|", FUNC0(num_bar));
  FUNC2(strm_ns_number, "<", FUNC0(num_lt));
  FUNC2(strm_ns_number, "<=", FUNC0(num_le));
  FUNC2(strm_ns_number, ">", FUNC0(num_gt));
  FUNC2(strm_ns_number, ">=", FUNC0(num_ge));
  FUNC2(state, "number", FUNC0(num_number));
}