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
typedef  scalar_t__ strm_int ;

/* Variables and functions */
 scalar_t__ STRM_STR_INTERN_LIMIT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strm_event_loop_started ; 

strm_string
FUNC3(const char* p, strm_int len)
{
  if (!strm_event_loop_started) {
    /* single thread mode */
    if (p && (len < STRM_STR_INTERN_LIMIT || FUNC0(p))) {
      return FUNC1(p, len, 0);
    }
  }
  return FUNC2(p, len, 0);
}