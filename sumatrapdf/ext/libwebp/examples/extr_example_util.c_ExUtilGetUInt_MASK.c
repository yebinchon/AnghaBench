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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char const* const,char**,int) ; 

uint32_t FUNC2(const char* const v, int base, int* const error) {
  char* end = NULL;
  const uint32_t n = (v != NULL) ? (uint32_t)FUNC1(v, &end, base) : 0u;
  if (end == v && error != NULL && !*error) {
    *error = 1;
    FUNC0(stderr, "Error! '%s' is not an integer.\n",
            (v != NULL) ? v : "(null)");
  }
  return n;
}