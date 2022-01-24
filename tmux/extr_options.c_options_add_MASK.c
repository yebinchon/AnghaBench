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
struct options_entry {int /*<<< orphan*/  name; struct options* owner; } ;
struct options {int /*<<< orphan*/  tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct options_entry*) ; 
 struct options_entry* FUNC1 (struct options*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct options_entry*) ; 
 int /*<<< orphan*/  options_tree ; 
 struct options_entry* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static struct options_entry *
FUNC5(struct options *oo, const char *name)
{
	struct options_entry	*o;

	o = FUNC1(oo, name);
	if (o != NULL)
		FUNC2(o);

	o = FUNC3(1, sizeof *o);
	o->owner = oo;
	o->name = FUNC4(name);

	FUNC0(options_tree, &oo->tree, o);
	return (o);
}