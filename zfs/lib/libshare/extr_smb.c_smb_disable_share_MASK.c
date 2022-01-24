#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ smb_share_t ;
typedef  TYPE_2__* sa_share_impl_t ;
struct TYPE_6__ {int /*<<< orphan*/  sharepath; } ;

/* Variables and functions */
 int SA_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* smb_shares ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(sa_share_impl_t impl_share)
{
	smb_share_t *shares = smb_shares;

	if (!FUNC0()) {
		/*
		 * The share can't possibly be active, so nothing
		 * needs to be done to disable it.
		 */
		return (SA_OK);
	}

	while (shares != NULL) {
		if (FUNC2(impl_share->sharepath, shares->path) == 0)
			return (FUNC1(shares->name));

		shares = shares->next;
	}

	return (SA_OK);
}