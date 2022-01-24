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
union options_value {int /*<<< orphan*/  string; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;
struct options {int dummy; } ;
struct environ_entry {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct environ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct environ*,int /*<<< orphan*/ ) ; 
 struct environ_entry* FUNC1 (struct environ*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct environ*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct options_array_item* FUNC3 (struct options_entry*) ; 
 union options_value* FUNC4 (struct options_array_item*) ; 
 struct options_array_item* FUNC5 (struct options_array_item*) ; 
 struct options_entry* FUNC6 (struct options*,char*) ; 

void
FUNC7(struct options *oo, struct environ *src, struct environ *dst)
{
	struct environ_entry		*envent;
	struct options_entry		*o;
	struct options_array_item	*a;
	union options_value		*ov;

	o = FUNC6(oo, "update-environment");
	if (o == NULL)
		return;
	a = FUNC3(o);
	while (a != NULL) {
		ov = FUNC4(a);
		if ((envent = FUNC1(src, ov->string)) == NULL)
			FUNC0(dst, ov->string);
		else
			FUNC2(dst, envent->name, "%s", envent->value);
		a = FUNC5(a);
	}
}