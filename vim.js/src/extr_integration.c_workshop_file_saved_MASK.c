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
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  dummy ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(char *filename)
{
	char buffer[2*MAXPATHLEN];
	FUNC2(buffer, sizeof(buffer),
			FUNC0("savedFile %s\n"), filename);
	dummy = FUNC4(sd, buffer, FUNC1(buffer));

	/* Let editor report any moved marks that the eserve client
	 * should deal with (for example, moving location-based breakpoints) */
	FUNC3(filename);
}