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
typedef  int /*<<< orphan*/  u_char ;
struct args_value {int /*<<< orphan*/  value; } ;
struct args_entry {int /*<<< orphan*/  values; } ;
struct args {int dummy; } ;

/* Variables and functions */
 struct args_value* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct args_entry* FUNC1 (struct args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args_values ; 
 long long FUNC2 (int /*<<< orphan*/ ,long long,long long,char const**) ; 
 char* FUNC3 (char const*) ; 

long long
FUNC4(struct args *args, u_char ch, long long minval, long long maxval,
    char **cause)
{
	const char		*errstr;
	long long 	 	 ll;
	struct args_entry	*entry;
	struct args_value	*value;

	if ((entry = FUNC1(args, ch)) == NULL) {
		*cause = FUNC3("missing");
		return (0);
	}
	value = FUNC0(&entry->values, args_values);

	ll = FUNC2(value->value, minval, maxval, &errstr);
	if (errstr != NULL) {
		*cause = FUNC3(errstr);
		return (0);
	}

	*cause = NULL;
	return (ll);
}