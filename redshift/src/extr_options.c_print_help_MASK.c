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
 int DEFAULT_DAY_TEMP ; 
 int DEFAULT_NIGHT_TEMP ; 
 int NEUTRAL_TEMP ; 
 char* PACKAGE_BUGREPORT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(const char *program_name)
{
	/* TRANSLATORS: help output 1
	   LAT is latitude, LON is longitude,
	   DAY is temperature at daytime,
	   NIGHT is temperature at night
	   no-wrap */
	FUNC2(FUNC0("Usage: %s -l LAT:LON -t DAY:NIGHT [OPTIONS...]\n"),
		program_name);
	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 2
	   no-wrap */
	FUNC1(FUNC0("Set color temperature of display"
		" according to time of day.\n"), stdout);
	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 3
	   no-wrap */
	FUNC1(FUNC0("  -h\t\tDisplay this help message\n"
		"  -v\t\tVerbose output\n"
		"  -V\t\tShow program version\n"), stdout);
	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 4
	   `list' must not be translated
	   no-wrap */
	FUNC1(FUNC0("  -b DAY:NIGHT\tScreen brightness to apply (between 0.1 and 1.0)\n"
		"  -c FILE\tLoad settings from specified configuration file\n"
		"  -g R:G:B\tAdditional gamma correction to apply\n"
		"  -l LAT:LON\tYour current location\n"
		"  -l PROVIDER\tSelect provider for automatic"
		" location updates\n"
		"  \t\t(Type `list' to see available providers)\n"
		"  -m METHOD\tMethod to use to set color temperature\n"
		"  \t\t(Type `list' to see available methods)\n"
		"  -o\t\tOne shot mode (do not continuously adjust"
		" color temperature)\n"
		"  -O TEMP\tOne shot manual mode (set color temperature)\n"
		"  -p\t\tPrint mode (only print parameters and exit)\n"
		"  -P\t\tReset existing gamma ramps before applying new"
		" color effect\n"
		"  -x\t\tReset mode (remove adjustment from screen)\n"
		"  -r\t\tDisable fading between color temperatures\n"
		"  -t DAY:NIGHT\tColor temperature to set at daytime/night\n"),
	      stdout);
	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 5 */
	FUNC2(FUNC0("The neutral temperature is %uK. Using this value will not change "
		 "the color\ntemperature of the display. Setting the color temperature "
		 "to a value higher\nthan this results in more blue light, and setting "
		 "a lower value will result in\nmore red light.\n"),
		 NEUTRAL_TEMP);

	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 6 */
	FUNC2(FUNC0("Default values:\n\n"
		 "  Daytime temperature: %uK\n"
		 "  Night temperature: %uK\n"),
	       DEFAULT_DAY_TEMP, DEFAULT_NIGHT_TEMP);

	FUNC1("\n", stdout);

	/* TRANSLATORS: help output 7 */
	FUNC2(FUNC0("Please report bugs to <%s>\n"), PACKAGE_BUGREPORT);
}