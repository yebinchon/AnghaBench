#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cp_wkey; int /*<<< orphan*/ * cp_keylocation; } ;
typedef  TYPE_1__ dsl_crypto_params_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(dsl_crypto_params_t *dcp, boolean_t unload)
{
	if (dcp == NULL)
		return;

	if (dcp->cp_keylocation != NULL)
		FUNC2(dcp->cp_keylocation);
	if (unload && dcp->cp_wkey != NULL)
		FUNC0(dcp->cp_wkey);

	FUNC1(dcp, sizeof (dsl_crypto_params_t));
}