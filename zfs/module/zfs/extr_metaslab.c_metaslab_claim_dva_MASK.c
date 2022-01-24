#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dva_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENXIO ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(spa_t *spa, const dva_t *dva, uint64_t txg)
{
	uint64_t vdev = FUNC4(dva);
	uint64_t offset = FUNC3(dva);
	uint64_t size = FUNC1(dva);
	vdev_t *vd;

	if ((vd = FUNC8(spa, vdev)) == NULL) {
		return (FUNC6(ENXIO));
	}

	FUNC0(FUNC5(dva));

	if (FUNC2(dva))
		size = FUNC9(vd, SPA_GANGBLOCKSIZE);

	return (FUNC7(vd, offset, size, txg));
}