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
struct TYPE_2__ {long long number; } ;
struct options_entry {TYPE_1__ value; } ;
struct options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct options_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 struct options_entry* FUNC2 (struct options*,int /*<<< orphan*/ ) ; 
 struct options_entry* FUNC3 (struct options*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct options*,char const*) ; 

struct options_entry *
FUNC5(struct options *oo, const char *name, long long value)
{
	struct options_entry	*o;

	if (*name == '@')
		FUNC1("user option %s must be a string", name);

	o = FUNC3(oo, name);
	if (o == NULL) {
		o = FUNC2(oo, FUNC4(oo, name));
		if (o == NULL)
			return (NULL);
	}

	if (!FUNC0(o))
		FUNC1("option %s is not a number", name);
	o->value.number = value;
	return (o);
}