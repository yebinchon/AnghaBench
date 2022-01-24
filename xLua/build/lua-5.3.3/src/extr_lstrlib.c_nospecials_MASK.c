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

/* Variables and functions */
 int /*<<< orphan*/  SPECIALS ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (const char *p, size_t l) {
  size_t upto = 0;
  do {
    if (FUNC1(p + upto, SPECIALS))
      return 0;  /* pattern has a special character */
    upto += FUNC0(p + upto) + 1;  /* may have more after \0 */
  } while (upto <= l);
  return 1;  /* no special chars found */
}