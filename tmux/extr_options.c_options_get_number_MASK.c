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
 struct options_entry* FUNC2 (struct options*,char const*) ; 

long long
FUNC3(struct options *oo, const char *name)
{
	struct options_entry	*o;

	o = FUNC2(oo, name);
	if (o == NULL)
		FUNC1("missing option %s", name);
	if (!FUNC0(o))
	    FUNC1("option %s is not a number", name);
	return (o->value.number);
}