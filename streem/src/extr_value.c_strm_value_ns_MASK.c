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
struct strm_misc {int /*<<< orphan*/ * ns; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 scalar_t__ STRM_PTR_AUX ; 
 scalar_t__ STRM_TAG_PTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strm_ns_array ; 
 int /*<<< orphan*/ * strm_ns_number ; 
 int /*<<< orphan*/ * strm_ns_string ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct strm_misc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct strm_misc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

strm_state*
FUNC7(strm_value val)
{
  if (FUNC0(val)) {
    strm_state* ns = FUNC1(val);
    if (ns) return ns;
    return strm_ns_array;
  }
  if (FUNC5(val)) {
    return strm_ns_string;
  }
  if (FUNC2(val)) {
    return strm_ns_number;
  }
  if (FUNC6(val) == STRM_TAG_PTR) {
    struct strm_misc* p = FUNC3(val);

    if (!p) return NULL;
    if (FUNC4(p) == STRM_PTR_AUX) {
      return p->ns;
    }
  }
  return NULL;
}