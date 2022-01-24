#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_8__ {scalar_t__* zf_gen; scalar_t__* zf_object; scalar_t__ zf_len; } ;
typedef  TYPE_2__ zfid_short_t ;
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
struct inode {int dummy; } ;
struct TYPE_9__ {scalar_t__ fid_len; } ;
typedef  TYPE_3__ fid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHORT_FID_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,TYPE_3__*) ; 

int
FUNC7(struct inode *ip, fid_t *fidp)
{
	znode_t		*zp = FUNC0(ip);
	zfsvfs_t	*zfsvfs = FUNC1(ip);
	uint64_t	object = zp->z_id;
	zfid_short_t	*zfid;
	int		i;

	FUNC3(zfsvfs);

	if (FUNC5(ip)) {
		FUNC4(zfsvfs);
		return (FUNC6(ip, fidp));
	}

	if (fidp->fid_len < SHORT_FID_LEN) {
		fidp->fid_len = SHORT_FID_LEN;
		FUNC4(zfsvfs);
		return (FUNC2(ENOSPC));
	}

	zfid = (zfid_short_t *)fidp;

	zfid->zf_len = SHORT_FID_LEN;

	for (i = 0; i < sizeof (zfid->zf_object); i++)
		zfid->zf_object[i] = (uint8_t)(object >> (8 * i));

	/* .zfs znodes always have a generation number of 0 */
	for (i = 0; i < sizeof (zfid->zf_gen); i++)
		zfid->zf_gen[i] = 0;

	FUNC4(zfsvfs);
	return (0);
}