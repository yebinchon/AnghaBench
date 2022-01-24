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
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {char* shareopts; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SA_NO_MEMORY ; 
 int SA_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_fstype ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static int
FUNC7(sa_share_impl_t impl_share, const char *resource,
    const char *shareopts)
{
	char *shareopts_dup;
	boolean_t needs_reshare = B_FALSE;
	char *old_shareopts;

	FUNC0(impl_share, nfs_fstype)->active =
	    FUNC4(impl_share);

	old_shareopts = FUNC0(impl_share, nfs_fstype)->shareopts;

	if (FUNC5(shareopts, "on") == 0)
		shareopts = "rw,crossmnt";

	if (FUNC0(impl_share, nfs_fstype)->active && old_shareopts != NULL &&
	    FUNC5(old_shareopts, shareopts) != 0) {
		needs_reshare = B_TRUE;
		FUNC2(impl_share);
	}

	shareopts_dup = FUNC6(shareopts);

	if (shareopts_dup == NULL)
		return (SA_NO_MEMORY);

	if (old_shareopts != NULL)
		FUNC1(old_shareopts);

	FUNC0(impl_share, nfs_fstype)->shareopts = shareopts_dup;

	if (needs_reshare)
		FUNC3(impl_share);

	return (SA_OK);
}