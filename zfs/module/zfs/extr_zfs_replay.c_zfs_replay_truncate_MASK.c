#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_6__ {int /*<<< orphan*/  lr_offset; int /*<<< orphan*/  lr_length; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_1__ lr_truncate_t ;
struct TYPE_7__ {int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
typedef  TYPE_2__ flock64_t ;
typedef  int /*<<< orphan*/  fl ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int FOFFMAX ; 
 int FWRITE ; 
 int /*<<< orphan*/  F_FREESP ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_truncate_t *lr = arg2;
	znode_t *zp;
	flock64_t fl;
	int error;

	if (byteswap)
		FUNC1(lr, sizeof (*lr));

	if ((error = FUNC5(zfsvfs, lr->lr_foid, &zp)) != 0)
		return (error);

	FUNC2(&fl, sizeof (fl));
	fl.l_type = F_WRLCK;
	fl.l_whence = SEEK_SET;
	fl.l_start = lr->lr_offset;
	fl.l_len = lr->lr_length;

	error = FUNC4(FUNC0(zp), F_FREESP, &fl, FWRITE | FOFFMAX,
	    lr->lr_offset, kcred);

	FUNC3(FUNC0(zp));

	return (error);
}