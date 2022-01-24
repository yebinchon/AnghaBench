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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int c)
{
	if (c <= 0xff) FUNC0("<%02x>", c);
	else if (c <= 0xffff) FUNC0("<%04x>", c);
	else if (c <= 0xffffff) FUNC0("<%06x>", c);
	else FUNC0("<%010x>", c);
}