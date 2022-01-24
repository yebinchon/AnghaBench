#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_6__ {int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_7__ {scalar_t__ dp_tmp_userrefs_obj; int /*<<< orphan*/  dp_spa; int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SPA_VERSION_USERREFS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC13(dsl_pool_t *dp)
{
	zap_attribute_t za;
	zap_cursor_t zc;
	objset_t *mos = dp->dp_meta_objset;
	uint64_t zapobj = dp->dp_tmp_userrefs_obj;
	nvlist_t *holds;

	if (zapobj == 0)
		return;
	FUNC0(FUNC7(dp->dp_spa) >= SPA_VERSION_USERREFS);

	holds = FUNC4();

	for (FUNC11(&zc, mos, zapobj);
	    FUNC12(&zc, &za) == 0;
	    FUNC9(&zc)) {
		char *htag;
		nvlist_t *tags;

		htag = FUNC8(za.za_name, '-');
		*htag = '\0';
		++htag;
		if (FUNC6(holds, za.za_name, &tags) != 0) {
			tags = FUNC4();
			FUNC2(tags, htag);
			FUNC3(holds, za.za_name, tags);
			FUNC5(tags);
		} else {
			FUNC2(tags, htag);
		}
	}
	FUNC1(dp, holds);
	FUNC5(holds);
	FUNC10(&zc);
}