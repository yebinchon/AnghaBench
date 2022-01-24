#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ location_provider_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(const location_provider_t location_providers[])
{
	FUNC1(FUNC0("Available location providers:\n"), stdout);
	for (int i = 0; location_providers[i].name != NULL; i++) {
		FUNC2("  %s\n", location_providers[i].name);
	}

	FUNC1("\n", stdout);
	FUNC1(FUNC0("Specify colon-separated options with"
		"`-l PROVIDER:OPTIONS'.\n"), stdout);
	/* TRANSLATORS: `help' must not be translated. */
	FUNC1(FUNC0("Try `-l PROVIDER:help' for help.\n"), stdout);
}