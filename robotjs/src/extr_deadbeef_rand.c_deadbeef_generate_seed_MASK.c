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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

uint32_t FUNC2(void)
{
	  uint32_t t = (uint32_t)FUNC1(NULL);
	  uint32_t c = (uint32_t)FUNC0();
	  return (t << 24) ^ (c << 11) ^ t ^ (size_t) &c;
}