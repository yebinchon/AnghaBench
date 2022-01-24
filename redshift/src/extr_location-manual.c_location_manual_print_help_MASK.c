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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(FILE *f)
{
	FUNC1(FUNC0("Specify location manually.\n"), f);
	FUNC1("\n", f);

	/* TRANSLATORS: Manual location help output
	   left column must not be translated */
	FUNC1(FUNC0("  lat=N\t\tLatitude\n"
		"  lon=N\t\tLongitude\n"), f);
	FUNC1("\n", f);
	FUNC1(FUNC0("Both values are expected to be floating point numbers,\n"
		"negative values representing west / south, respectively.\n"), f);
	FUNC1("\n", f);
}