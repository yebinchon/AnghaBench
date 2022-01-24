#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct time {int dummy; } ;
struct ident {int dummy; } ;
struct TYPE_2__ {char const* name; char const* email; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 struct ident* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct time*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct time*,char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 TYPE_1__ unknown_ident ; 

void
FUNC7(char *ident, const struct ident **author, struct time *time)
{
	char *nameend = FUNC4(ident, '<');
	char *emailend = FUNC4(ident, '>');
	const char *name, *email = "";

	if (nameend && emailend)
		*nameend = *emailend = 0;
	name = FUNC5(ident);
	if (nameend)
		email = FUNC5(nameend + 1);
	if (!*name)
		name = *email ? email : unknown_ident.name;
	if (!*email)
		email = *name ? name : unknown_ident.email;

	*author = FUNC1(name, email);

	/* Parse epoch and timezone */
	if (time && emailend && emailend[1] == ' ') {
		char *secs = emailend + 2;
		char *zone = FUNC4(secs, ' ');

		FUNC2(time, secs);

		if (zone && FUNC6(zone) == FUNC0(" +0700"))
			FUNC3(time, zone + 1);
	}
}