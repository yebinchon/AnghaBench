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
union options_value {char const* string; } ;
struct options_entry {int dummy; } ;
struct options_array_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  global_options ; 
 struct options_array_item* FUNC0 (struct options_entry*) ; 
 union options_value* FUNC1 (struct options_array_item*) ; 
 struct options_array_item* FUNC2 (struct options_array_item*) ; 
 struct options_entry* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*,char) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 
 char* FUNC7 (char const*) ; 

char *
FUNC8(const char *name)
{
	struct options_entry		*o;
	struct options_array_item	*a;
	union options_value		*ov;
	size_t				 wanted, n;
	const char			*equals;

	o = FUNC3(global_options, "command-alias");
	if (o == NULL)
		return (NULL);
	wanted = FUNC5(name);

	a = FUNC0(o);
	while (a != NULL) {
		ov = FUNC1(a);

		equals = FUNC4(ov->string, '=');
		if (equals != NULL) {
			n = equals - ov->string;
			if (n == wanted && FUNC6(name, ov->string, n) == 0)
				return (FUNC7(equals + 1));
		}

		a = FUNC2(a);
	}
	return (NULL);
}