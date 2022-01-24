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
struct style {int dummy; } ;
struct TYPE_2__ {struct style style; } ;
struct options_entry {TYPE_1__ value; } ;
struct options {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct options_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 struct options_entry* FUNC2 (struct options*,int /*<<< orphan*/ ) ; 
 struct options_entry* FUNC3 (struct options*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct options*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct style*,struct style*) ; 
 int FUNC6 (struct style*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct style*,int /*<<< orphan*/ *) ; 

struct options_entry *
FUNC8(struct options *oo, const char *name, int append,
    const char *value)
{
	struct options_entry	*o;
	struct style		 sy;

	if (*name == '@')
		FUNC1("user option %s must be a string", name);

	o = FUNC3(oo, name);
	if (o != NULL && append && FUNC0(o))
		FUNC5(&sy, &o->value.style);
	else
		FUNC7(&sy, &grid_default_cell);
	if (FUNC6(&sy, &grid_default_cell, value) == -1)
		return (NULL);
	if (o == NULL) {
		o = FUNC2(oo, FUNC4(oo, name));
		if (o == NULL)
			return (NULL);
	}

	if (!FUNC0(o))
		FUNC1("option %s is not a style", name);
	FUNC5(&o->value.style, &sy);
	return (o);
}