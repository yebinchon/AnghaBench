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
 int FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 

int FUNC2(const unsigned char *s1, const unsigned char *s2, size_t n)
{
  if (n == 0)
    return 0;
  do {
    if (FUNC0(*s1) != FUNC0(*s2))
      return FUNC0(*(unsigned const char *)s1) - FUNC0(*(unsigned const char *)s2);
    s1 += FUNC1(*s1);
    s2 += FUNC1(*s2);

    if (*s1 == 0)
      break;
    n--;
  } while (n > 0);
  return 0;
}