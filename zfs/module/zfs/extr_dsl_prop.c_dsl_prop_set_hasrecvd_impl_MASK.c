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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ SPA_VERSION_RECVD_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPROP_HAS_RECVD ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const char *dsname, zprop_source_t source)
{
	uint64_t version;
	spa_t *spa;
	int error = 0;

	FUNC0(FUNC3(dsname, &spa, FTAG));
	version = FUNC4(spa);
	FUNC2(spa, FTAG);

	if (version >= SPA_VERSION_RECVD_PROPS)
		error = FUNC1(dsname, ZPROP_HAS_RECVD, source, 0);
	return (error);
}