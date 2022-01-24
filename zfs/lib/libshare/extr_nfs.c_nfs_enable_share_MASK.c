#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa_share_impl_t ;
struct TYPE_2__ {char* shareopts; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  nfs_enable_share_one ; 
 int /*<<< orphan*/  nfs_fstype ; 

__attribute__((used)) static int
FUNC5(sa_share_impl_t impl_share)
{
	char *shareopts, *linux_opts;
	int rc;

	if (!FUNC4()) {
		return (SA_SYSTEM_ERR);
	}

	shareopts = FUNC0(impl_share, nfs_fstype)->shareopts;

	if (shareopts == NULL)
		return (SA_OK);

	rc = FUNC3(shareopts, &linux_opts);

	if (rc != SA_OK)
		return (rc);

	rc = FUNC1(impl_share, nfs_enable_share_one, linux_opts);

	FUNC2(linux_opts);

	return (rc);
}