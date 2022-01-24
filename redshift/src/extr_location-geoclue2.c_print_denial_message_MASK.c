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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2()
{
	FUNC1(FUNC0(
		"Access to the current location was denied by GeoClue!\n"
		"Make sure that location services are enabled and that"
		" Redshift is permitted\nto use location services."
		" See https://github.com/jonls/redshift#faq for more\n"
		"information.\n"));
}