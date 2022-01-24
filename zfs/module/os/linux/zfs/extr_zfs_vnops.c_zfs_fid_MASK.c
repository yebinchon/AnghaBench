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
struct TYPE_5__ {int z_id; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_6__ {int zf_len; void** zf_gen; void** zf_object; } ;
typedef  TYPE_2__ zfid_short_t ;
typedef  void* uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  fid_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int SHORT_FID_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int
FUNC7(struct inode *ip, fid_t *fidp)
{
	znode_t		*zp = FUNC0(ip);
	zfsvfs_t	*zfsvfs = FUNC1(ip);
	uint32_t	gen;
	uint64_t	gen64;
	uint64_t	object = zp->z_id;
	zfid_short_t	*zfid;
	int		size, i, error;

	FUNC3(zfsvfs);
	FUNC5(zp);

	if ((error = FUNC6(zp->z_sa_hdl, FUNC2(zfsvfs),
	    &gen64, sizeof (uint64_t))) != 0) {
		FUNC4(zfsvfs);
		return (error);
	}

	gen = (uint32_t)gen64;

	size = SHORT_FID_LEN;

	zfid = (zfid_short_t *)fidp;

	zfid->zf_len = size;

	for (i = 0; i < sizeof (zfid->zf_object); i++)
		zfid->zf_object[i] = (uint8_t)(object >> (8 * i));

	/* Must have a non-zero generation number to distinguish from .zfs */
	if (gen == 0)
		gen = 1;
	for (i = 0; i < sizeof (zfid->zf_gen); i++)
		zfid->zf_gen[i] = (uint8_t)(gen >> (8 * i));

	FUNC4(zfsvfs);
	return (0);
}