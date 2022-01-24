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
 int /*<<< orphan*/  FUNC0 (int volatile*,int,int) ; 
 int FUNC1 (int volatile*) ; 

int FUNC2(int volatile *a)
{
#if defined(USE_C11_ATOMICS)
  return atomic_load(a);
#else
  int value;
  do {
    value = *a;
  } while (!FUNC0(a, value, value));
  return value;
#endif
}