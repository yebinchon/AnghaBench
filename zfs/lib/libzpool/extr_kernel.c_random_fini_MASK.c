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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int random_fd ; 
 int urandom_fd ; 

void
FUNC1(void)
{
	FUNC0(random_fd);
	FUNC0(urandom_fd);

	random_fd = -1;
	urandom_fd = -1;
}