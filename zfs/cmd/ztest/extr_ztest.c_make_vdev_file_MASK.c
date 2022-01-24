#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {char* zo_pool; int /*<<< orphan*/  zo_dir; } ;
struct TYPE_3__ {scalar_t__ zs_vdev_aux; int /*<<< orphan*/  zs_vdev_next_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 char* VDEV_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ASHIFT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ FUNC3 (int,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 char* ztest_aux_template ; 
 char* ztest_dev_template ; 
 scalar_t__ FUNC11 () ; 
 TYPE_2__ ztest_opts ; 
 TYPE_1__* ztest_shared ; 

__attribute__((used)) static nvlist_t *
FUNC12(char *path, char *aux, char *pool, size_t size, uint64_t ashift)
{
	char *pathbuf;
	uint64_t vdev;
	nvlist_t *file;

	pathbuf = FUNC9(MAXPATHLEN, UMEM_NOFAIL);

	if (ashift == 0)
		ashift = FUNC11();

	if (path == NULL) {
		path = pathbuf;

		if (aux != NULL) {
			vdev = ztest_shared->zs_vdev_aux;
			(void) FUNC8(path, MAXPATHLEN,
			    ztest_aux_template, ztest_opts.zo_dir,
			    pool == NULL ? ztest_opts.zo_pool : pool,
			    aux, vdev);
		} else {
			vdev = ztest_shared->zs_vdev_next_leaf++;
			(void) FUNC8(path, MAXPATHLEN,
			    ztest_dev_template, ztest_opts.zo_dir,
			    pool == NULL ? ztest_opts.zo_pool : pool, vdev);
		}
	}

	if (size != 0) {
		int fd = FUNC7(path, O_RDWR | O_CREAT | O_TRUNC, 0666);
		if (fd == -1)
			FUNC2(1, "can't open %s", path);
		if (FUNC3(fd, size) != 0)
			FUNC2(1, "can't ftruncate %s", path);
		(void) FUNC1(fd);
	}

	FUNC0(FUNC6(&file, NV_UNIQUE_NAME, 0) == 0);
	FUNC0(FUNC4(file, ZPOOL_CONFIG_TYPE, VDEV_TYPE_FILE) == 0);
	FUNC0(FUNC4(file, ZPOOL_CONFIG_PATH, path) == 0);
	FUNC0(FUNC5(file, ZPOOL_CONFIG_ASHIFT, ashift) == 0);
	FUNC10(pathbuf, MAXPATHLEN);

	return (file);
}