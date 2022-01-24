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
typedef  scalar_t__ sint8 ;
typedef  int /*<<< orphan*/  sint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(STREAM s, sint16 * coord, BOOL delta)
{
	sint8 change;

	if (delta)
	{
		FUNC1(s, change);
		*coord += change;
	}
	else
	{
		FUNC0(s, *coord);
	}
}