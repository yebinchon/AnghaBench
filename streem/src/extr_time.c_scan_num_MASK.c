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
 int FUNC0 (char const) ; 

__attribute__((used)) static int
FUNC1(const char** sp, const char* send)
{
  const char* s = *sp;
  int n = 0;

  while (s < send) {
    int i = FUNC0(*s);
    if (i>9) {
      if (s == *sp) return -1;
      *sp = s;
      return n;
    }
    s++;
    n = 10*n + i;
  }
  *sp = s;
  return n;
}