#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vdev_deflate_ratio; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_8__ {scalar_t__ spa_deflate; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  dva_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int SPA_MINBLOCKSHIFT ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

uint64_t
FUNC5(spa_t *spa, const dva_t *dva)
{
	uint64_t asize = FUNC1(dva);
	uint64_t dsize = asize;

	FUNC0(FUNC3(spa, SCL_ALL, RW_READER) != 0);

	if (asize != 0 && spa->spa_deflate) {
		vdev_t *vd = FUNC4(spa, FUNC2(dva));
		if (vd != NULL)
			dsize = (asize >> SPA_MINBLOCKSHIFT) *
			    vd->vdev_deflate_ratio;
	}

	return (dsize);
}