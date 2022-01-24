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
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  int /*<<< orphan*/  zpool_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPROP_SOURCE ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(nvlist_t *nvl, zpool_prop_t prop, char *strval,
    uint64_t intval, zprop_source_t src)
{
	const char *propname = FUNC6(prop);
	nvlist_t *propval;

	FUNC0(FUNC4(&propval, NV_UNIQUE_NAME, KM_SLEEP) == 0);
	FUNC0(FUNC3(propval, ZPROP_SOURCE, src) == 0);

	if (strval != NULL)
		FUNC0(FUNC2(propval, ZPROP_VALUE, strval) == 0);
	else
		FUNC0(FUNC3(propval, ZPROP_VALUE, intval) == 0);

	FUNC0(FUNC1(nvl, propname, propval) == 0);
	FUNC5(propval);
}