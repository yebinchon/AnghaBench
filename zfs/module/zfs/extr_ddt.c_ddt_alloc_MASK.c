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
typedef  int /*<<< orphan*/  ddt_key_t ;
struct TYPE_5__ {int /*<<< orphan*/  dde_key; int /*<<< orphan*/  dde_cv; } ;
typedef  TYPE_1__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ddt_entry_cache ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ddt_entry_t *
FUNC3(const ddt_key_t *ddk)
{
	ddt_entry_t *dde;

	dde = FUNC2(ddt_entry_cache, KM_SLEEP);
	FUNC0(dde, sizeof (ddt_entry_t));
	FUNC1(&dde->dde_cv, NULL, CV_DEFAULT, NULL);

	dde->dde_key = *ddk;

	return (dde);
}