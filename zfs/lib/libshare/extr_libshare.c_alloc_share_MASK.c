#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sa_share_impl {int dummy; } ;
typedef  TYPE_1__* sa_share_impl_t ;
typedef  int /*<<< orphan*/  sa_share_fsinfo_t ;
struct TYPE_5__ {struct TYPE_5__* sharepath; int /*<<< orphan*/ * fsinfo; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int fstypes_count ; 
 TYPE_1__* FUNC2 (char const*) ; 

__attribute__((used)) static sa_share_impl_t
FUNC3(const char *sharepath)
{
	sa_share_impl_t impl_share;

	impl_share = FUNC0(1, sizeof (struct sa_share_impl));

	if (impl_share == NULL)
		return (NULL);

	impl_share->sharepath = FUNC2(sharepath);

	if (impl_share->sharepath == NULL) {
		FUNC1(impl_share);
		return (NULL);
	}

	impl_share->fsinfo = FUNC0(fstypes_count, sizeof (sa_share_fsinfo_t));

	if (impl_share->fsinfo == NULL) {
		FUNC1(impl_share->sharepath);
		FUNC1(impl_share);
		return (NULL);
	}

	return (impl_share);
}