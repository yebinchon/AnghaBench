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
typedef  int /*<<< orphan*/  data_type_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(nvlist_t *nvl, const char *name, data_type_t type)
{
	if (nvl == NULL || name == NULL || nvl->nvl_priv == 0)
		return (EINVAL);

	nvpair_t *nvp = FUNC1(nvl, name, type);
	if (nvp == NULL)
		return (ENOENT);

	return (FUNC0(nvl, nvp));
}