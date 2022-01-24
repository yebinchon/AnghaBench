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
typedef  int /*<<< orphan*/  pool_config_ops_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  importargs_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int
FUNC9(void *hdl, const char *target, nvlist_t **configp,
    importargs_t *args, const pool_config_ops_t *pco)
{
	nvlist_t *pools;
	nvlist_t *match = NULL;
	nvlist_t *config = NULL;
	char *name = NULL, *sepp = NULL;
	char sep = '\0';
	int count = 0;
	char *targetdup = FUNC6(target);

	*configp = NULL;

	if ((sepp = FUNC7(targetdup, "/@")) != NULL) {
		sep = *sepp;
		*sepp = '\0';
	}

	pools = FUNC8(hdl, args, pco);

	if (pools != NULL) {
		nvpair_t *elem = NULL;
		while ((elem = FUNC2(pools, elem)) != NULL) {
			FUNC0(FUNC4(elem, &config));
			if (FUNC5(config, targetdup)) {
				count++;
				if (match != NULL) {
					/* multiple matches found */
					continue;
				} else {
					match = config;
					name = FUNC3(elem);
				}
			}
		}
	}

	if (count == 0) {
		FUNC1(targetdup);
		return (ENOENT);
	}

	if (count > 1) {
		FUNC1(targetdup);
		return (EINVAL);
	}

	*configp = match;
	FUNC1(targetdup);

	return (0);
}