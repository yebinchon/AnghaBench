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
typedef  int /*<<< orphan*/  THGenerator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

unsigned long FUNC3(THGenerator *_generator)
{
#ifdef _WIN32
  unsigned long s = (unsigned long)time(0);
#else
  unsigned long s = FUNC1();
#endif
  FUNC0(_generator, s);
  return s;
}