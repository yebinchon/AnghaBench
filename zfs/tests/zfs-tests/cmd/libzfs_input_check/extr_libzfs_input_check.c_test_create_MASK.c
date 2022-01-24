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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dataset ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  ZFS_IOC_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 

__attribute__((used)) static void
FUNC7(const char *pool)
{
	char dataset[MAXNAMELEN + 32];

	(void) FUNC6(dataset, sizeof (dataset), "%s/create-fs", pool);

	nvlist_t *required = FUNC4();
	nvlist_t *optional = FUNC4();
	nvlist_t *props = FUNC4();

	FUNC1(required, "type", DMU_OST_ZFS);
	FUNC3(props, "recordsize", 8192);
	FUNC2(optional, "props", props);

	FUNC0(ZFS_IOC_CREATE, dataset, required, optional, 0);

	FUNC5(required);
	FUNC5(optional);
}