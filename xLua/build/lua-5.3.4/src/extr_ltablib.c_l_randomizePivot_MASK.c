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
typedef  unsigned int* time_t ;
typedef  unsigned int* clock_t ;

/* Variables and functions */
 unsigned int* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int**,int) ; 
 unsigned int FUNC2 (unsigned int*) ; 
 unsigned int* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4 (void) {
  clock_t c = FUNC0();
  time_t t = FUNC3(NULL);
  unsigned int buff[FUNC2(c) + FUNC2(t)];
  unsigned int i, rnd = 0;
  FUNC1(buff, &c, FUNC2(c) * sizeof(unsigned int));
  FUNC1(buff + FUNC2(c), &t, FUNC2(t) * sizeof(unsigned int));
  for (i = 0; i < FUNC2(buff); i++)
    rnd += buff[i];
  return rnd;
}