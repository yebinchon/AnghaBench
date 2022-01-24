#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sa_share_impl_t ;
struct TYPE_6__ {char* shareopts; } ;
struct TYPE_5__ {int /*<<< orphan*/  sharepath; int /*<<< orphan*/  dataset; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int SA_OK ; 
 int SA_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_fstype ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(sa_share_impl_t impl_share)
{
	char *shareopts;

	if (!FUNC1())
		return (SA_SYSTEM_ERR);

	shareopts = FUNC0(impl_share, smb_fstype)->shareopts;
	if (shareopts == NULL) /* on/off */
		return (SA_SYSTEM_ERR);

	if (FUNC3(shareopts, "off") == 0)
		return (SA_OK);

	/* Magic: Enable (i.e., 'create new') share */
	return (FUNC2(impl_share->dataset,
	    impl_share->sharepath));
}