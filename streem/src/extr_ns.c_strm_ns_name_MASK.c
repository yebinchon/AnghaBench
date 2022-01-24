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
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_state ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  nstbl ; 
 int /*<<< orphan*/  strm_str_null ; 

strm_string
FUNC5(strm_state* state)
{
  khiter_t k;

  if (!nstbl) return strm_str_null;
  for (k = FUNC0(nstbl); k != FUNC1(nstbl); ++k) {
    if (FUNC2(nstbl, k)) {
      if (FUNC4(nstbl, k) == state)
        return FUNC3(nstbl, k);
    }
  }
  return strm_str_null;
}