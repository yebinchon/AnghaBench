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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(STREAM s, uint32 * colour)
{
	uint32 i;
	FUNC0(s, i);
	*colour = i;
	FUNC0(s, i);
	*colour |= i << 8;
	FUNC0(s, i);
	*colour |= i << 16;
}