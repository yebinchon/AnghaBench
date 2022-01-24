#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* sa_share_impl_t ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__* ops; } ;
typedef  TYPE_3__ sa_fstype_t ;
struct TYPE_14__ {TYPE_2__* resource; } ;
struct TYPE_12__ {struct TYPE_12__* fsinfo; struct TYPE_12__* dataset; struct TYPE_12__* sharepath; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* clear_shareopts ) (TYPE_2__*) ;} ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* fstypes ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(sa_share_impl_t impl_share)
{
	sa_fstype_t *fstype;

	fstype = fstypes;
	while (fstype != NULL) {
		fstype->ops->clear_shareopts(impl_share);

		FUNC1(FUNC0(impl_share, fstype)->resource);

		fstype = fstype->next;
	}

	FUNC1(impl_share->sharepath);
	FUNC1(impl_share->dataset);
	FUNC1(impl_share->fsinfo);
	FUNC1(impl_share);
}