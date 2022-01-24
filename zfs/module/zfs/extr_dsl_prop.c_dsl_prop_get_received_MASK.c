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
struct TYPE_4__ {int /*<<< orphan*/  os_dsl_dataset; } ;
typedef  TYPE_1__ objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_prop_getflags_t ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_PROP_GET_LOCAL ; 
 int /*<<< orphan*/  DSL_PROP_GET_RECEIVED ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

int
FUNC4(const char *dsname, nvlist_t **nvp)
{
	objset_t *os;
	int error;

	/*
	 * Received properties are not distinguishable from local properties
	 * until the dataset has received properties on or after
	 * SPA_VERSION_RECVD_PROPS.
	 */
	dsl_prop_getflags_t flags = (FUNC3(dsname) ?
	    DSL_PROP_GET_RECEIVED : DSL_PROP_GET_LOCAL);

	error = FUNC0(dsname, FTAG, &os);
	if (error != 0)
		return (error);
	error = FUNC2(os->os_dsl_dataset, nvp, flags);
	FUNC1(os, FTAG);
	return (error);
}