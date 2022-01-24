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
 int /*<<< orphan*/  str_chars ; 
 int /*<<< orphan*/  str_length ; 
 int /*<<< orphan*/  str_plus ; 
 int /*<<< orphan*/  str_split ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  strm_ns_string ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(strm_state* state)
{
  strm_ns_string = FUNC1(NULL, "string");
  FUNC2(strm_ns_string, "length", FUNC0(str_length));
  FUNC2(strm_ns_string, "split", FUNC0(str_split));
  FUNC2(strm_ns_string, "+", FUNC0(str_plus));
  FUNC2(strm_ns_string, "chars", FUNC0(str_chars));
}