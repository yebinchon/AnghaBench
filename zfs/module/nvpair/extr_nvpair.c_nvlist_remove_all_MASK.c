#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_priv; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*) ; 

int
FUNC3(nvlist_t *nvl, const char *name)
{
	int error = ENOENT;

	if (nvl == NULL || name == NULL || nvl->nvl_priv == 0)
		return (EINVAL);

	nvpair_t *nvp;
	while ((nvp = FUNC2(nvl, name)) != NULL) {
		FUNC0(FUNC1(nvl, nvp));
		error = 0;
	}

	return (error);
}