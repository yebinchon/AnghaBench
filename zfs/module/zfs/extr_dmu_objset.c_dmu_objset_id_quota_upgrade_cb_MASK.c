#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  os_flags; } ;
typedef  TYPE_1__ objset_t ;
struct TYPE_12__ {void** ds_feature_activation; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  OBJSET_FLAG_PROJECTQUOTA_COMPLETE ; 
 int /*<<< orphan*/  OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t SPA_FEATURE_PROJECT_QUOTA ; 
 size_t SPA_FEATURE_USEROBJ_ACCOUNTING ; 
 TYPE_10__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(objset_t *os)
{
	int err = 0;

	if (FUNC7(os) &&
	    FUNC5(os))
		return (0);
	if (FUNC2(os))
		return (FUNC0(EINVAL));
	if (!FUNC8(os))
		return (FUNC0(ENOTSUP));
	if (!FUNC4(os) &&
	    FUNC7(os))
		return (FUNC0(ENOTSUP));

	FUNC1(os)->ds_feature_activation[
	    SPA_FEATURE_USEROBJ_ACCOUNTING] = (void *)B_TRUE;
	if (FUNC4(os))
		FUNC1(os)->ds_feature_activation[
		    SPA_FEATURE_PROJECT_QUOTA] = (void *)B_TRUE;

	err = FUNC6(os);
	if (err)
		return (err);

	os->os_flags |= OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE;
	if (FUNC4(os))
		os->os_flags |= OBJSET_FLAG_PROJECTQUOTA_COMPLETE;

	FUNC9(FUNC3(os), 0);
	return (0);
}