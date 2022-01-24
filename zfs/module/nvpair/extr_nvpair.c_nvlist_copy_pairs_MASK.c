#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* nvp_list; } ;
typedef  TYPE_1__ nvpriv_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_8__ {scalar_t__ nvl_priv; } ;
typedef  TYPE_2__ nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  nvi_nvp; struct TYPE_9__* nvi_next; } ;
typedef  TYPE_3__ i_nvp_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(nvlist_t *snvl, nvlist_t *dnvl)
{
	nvpriv_t *priv;
	i_nvp_t *curr;

	if ((priv = (nvpriv_t *)(uintptr_t)snvl->nvl_priv) == NULL)
		return (EINVAL);

	for (curr = priv->nvp_list; curr != NULL; curr = curr->nvi_next) {
		nvpair_t *nvp = &curr->nvi_nvp;
		int err;

		if ((err = FUNC4(dnvl, FUNC0(nvp), FUNC2(nvp),
		    FUNC1(nvp), FUNC3(nvp))) != 0)
			return (err);
	}

	return (0);
}