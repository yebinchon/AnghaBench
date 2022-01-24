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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dummy ; 
 scalar_t__ sd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

void FUNC4(int new_x, int new_y, int new_w, int new_h)
{
	char buffer[200];

	if (sd >= 0)
	{
		FUNC2(buffer, sizeof(buffer),
				FUNC0("frameAt %d %d %d %d\n"),
				new_x, new_y, new_w, new_h);
		dummy = FUNC3(sd, buffer, FUNC1(buffer));
	}
}