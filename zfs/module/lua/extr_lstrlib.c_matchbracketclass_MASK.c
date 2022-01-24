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
 char const L_ESC ; 
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (char const) ; 

__attribute__((used)) static int FUNC2 (int c, const char *p, const char *ec) {
  int sig = 1;
  if (*(p+1) == '^') {
    sig = 0;
    p++;  /* skip the `^' */
  }
  while (++p < ec) {
    if (*p == L_ESC) {
      p++;
      if (FUNC0(c, FUNC1(*p)))
        return sig;
    }
    else if ((*(p+1) == '-') && (p+2 < ec)) {
      p+=2;
      if (FUNC1(*(p-2)) <= c && c <= FUNC1(*p))
        return sig;
    }
    else if (FUNC1(*p) == c) return sig;
  }
  return !sig;
}