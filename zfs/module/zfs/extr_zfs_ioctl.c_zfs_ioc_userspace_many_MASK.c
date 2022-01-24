#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_3__ {int zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_objset_type; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (void*,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zfs_cmd_t *zc)
{
	zfsvfs_t *zfsvfs;
	int bufsize = zc->zc_nvlist_dst_size;

	if (bufsize <= 0)
		return (FUNC0(ENOMEM));

	int error = FUNC5(zc->zc_name, FTAG, &zfsvfs, B_FALSE);
	if (error != 0)
		return (error);

	void *buf = FUNC1(bufsize, KM_SLEEP);

	error = FUNC4(zfsvfs, zc->zc_objset_type, &zc->zc_cookie,
	    buf, &zc->zc_nvlist_dst_size);

	if (error == 0) {
		error = FUNC3(buf,
		    (void *)(uintptr_t)zc->zc_nvlist_dst,
		    zc->zc_nvlist_dst_size);
	}
	FUNC2(buf, bufsize);
	FUNC6(zfsvfs, FTAG);

	return (error);
}