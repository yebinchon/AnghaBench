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
struct TYPE_3__ {float lat; float lon; } ;
typedef  TYPE_1__ location_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 double FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (char*,double,char const*,double,char const*) ; 

__attribute__((used)) static void
FUNC3(const location_t *location)
{
	/* TRANSLATORS: Abbreviation for `north' */
	const char *north = FUNC0("N");
	/* TRANSLATORS: Abbreviation for `south' */
	const char *south = FUNC0("S");
	/* TRANSLATORS: Abbreviation for `east' */
	const char *east = FUNC0("E");
	/* TRANSLATORS: Abbreviation for `west' */
	const char *west = FUNC0("W");

	/* TRANSLATORS: Append degree symbols after %f if possible.
	   The string following each number is an abreviation for
	   north, source, east or west (N, S, E, W). */
	FUNC2(FUNC0("Location: %.2f %s, %.2f %s\n"),
	       FUNC1(location->lat), location->lat >= 0.f ? north : south,
	       FUNC1(location->lon), location->lon >= 0.f ? east : west);
}