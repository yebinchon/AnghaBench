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
 int /*<<< orphan*/  csv ; 
 int /*<<< orphan*/  ltsv ; 
 int /*<<< orphan*/  str_number ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strm_ns_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsv ; 

void
FUNC2(strm_state* state)
{
  FUNC1(state, "csv", FUNC0(csv));
  FUNC1(state, "tsv", FUNC0(tsv));
  FUNC1(state, "ltsv", FUNC0(ltsv));

  FUNC1(strm_ns_string, "number", FUNC0(str_number));
}