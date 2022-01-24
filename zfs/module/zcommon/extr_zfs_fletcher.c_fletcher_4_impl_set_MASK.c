#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {char* fis_name; size_t fis_sel; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  fletcher_4_impl_chosen ; 
 TYPE_2__* fletcher_4_impl_selectors ; 
 scalar_t__ fletcher_4_initialized ; 
 TYPE_1__** fletcher_4_supp_impls ; 
 size_t fletcher_4_supp_impls_cnt ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t) ; 

int
FUNC7(const char *val)
{
	int err = -EINVAL;
	uint32_t impl = FUNC1(fletcher_4_impl_chosen);
	size_t i, val_len;

	val_len = FUNC5(val);
	while ((val_len > 0) && !!FUNC3(val[val_len-1])) /* trim '\n' */
		val_len--;

	/* check mandatory implementations */
	for (i = 0; i < FUNC0(fletcher_4_impl_selectors); i++) {
		const char *name = fletcher_4_impl_selectors[i].fis_name;

		if (val_len == FUNC5(name) &&
		    FUNC6(val, name, val_len) == 0) {
			impl = fletcher_4_impl_selectors[i].fis_sel;
			err = 0;
			break;
		}
	}

	if (err != 0 && fletcher_4_initialized) {
		/* check all supported implementations */
		for (i = 0; i < fletcher_4_supp_impls_cnt; i++) {
			const char *name = fletcher_4_supp_impls[i]->name;

			if (val_len == FUNC5(name) &&
			    FUNC6(val, name, val_len) == 0) {
				impl = i;
				err = 0;
				break;
			}
		}
	}

	if (err == 0) {
		FUNC2(&fletcher_4_impl_chosen, impl);
		FUNC4();
	}

	return (err);
}