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
typedef  scalar_t__ uint64_t ;
struct stat64 {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libpc_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  EZFS_BADCACHE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CACHEFILE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,struct stat64*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 char* FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static nvlist_t *
FUNC25(libpc_handle_t *hdl, const char *cachefile,
    const char *poolname, uint64_t guid)
{
	char *buf;
	int fd;
	struct stat64 statbuf;
	nvlist_t *raw, *src, *dst;
	nvlist_t *pools;
	nvpair_t *elem;
	char *name;
	uint64_t this_guid;
	boolean_t active;

	FUNC18(poolname == NULL || guid == 0);

	if ((fd = FUNC14(cachefile, O_RDONLY)) < 0) {
		FUNC21(hdl, "%s", FUNC17(errno));
		(void) FUNC20(hdl, EZFS_BADCACHE,
		    FUNC1(TEXT_DOMAIN, "failed to open cache file"));
		return (NULL);
	}

	if (FUNC6(fd, &statbuf) != 0) {
		FUNC21(hdl, "%s", FUNC17(errno));
		(void) FUNC0(fd);
		(void) FUNC20(hdl, EZFS_BADCACHE,
		    FUNC1(TEXT_DOMAIN, "failed to get size of cache file"));
		return (NULL);
	}

	if ((buf = FUNC19(hdl, statbuf.st_size)) == NULL) {
		(void) FUNC0(fd);
		return (NULL);
	}

	if (FUNC15(fd, buf, statbuf.st_size) != statbuf.st_size) {
		(void) FUNC0(fd);
		FUNC5(buf);
		(void) FUNC20(hdl, EZFS_BADCACHE,
		    FUNC1(TEXT_DOMAIN,
		    "failed to read cache file contents"));
		return (NULL);
	}

	(void) FUNC0(fd);

	if (FUNC12(buf, statbuf.st_size, &raw, 0) != 0) {
		FUNC5(buf);
		(void) FUNC20(hdl, EZFS_BADCACHE,
		    FUNC1(TEXT_DOMAIN,
		    "invalid or corrupt cache file contents"));
		return (NULL);
	}

	FUNC5(buf);

	/*
	 * Go through and get the current state of the pools and refresh their
	 * state.
	 */
	if (FUNC9(&pools, 0, 0) != 0) {
		(void) FUNC22(hdl);
		FUNC10(raw);
		return (NULL);
	}

	elem = NULL;
	while ((elem = FUNC11(raw, elem)) != NULL) {
		src = FUNC4(elem);

		name = FUNC2(src, ZPOOL_CONFIG_POOL_NAME);
		if (poolname != NULL && FUNC16(poolname, name) != 0)
			continue;

		this_guid = FUNC3(src, ZPOOL_CONFIG_POOL_GUID);
		if (guid != 0 && guid != this_guid)
			continue;

		if (FUNC23(hdl, name, this_guid, &active) != 0) {
			FUNC10(raw);
			FUNC10(pools);
			return (NULL);
		}

		if (active)
			continue;

		if (FUNC8(src, ZPOOL_CONFIG_CACHEFILE,
		    cachefile) != 0) {
			(void) FUNC22(hdl);
			FUNC10(raw);
			FUNC10(pools);
			return (NULL);
		}

		if ((dst = FUNC24(hdl, src)) == NULL) {
			FUNC10(raw);
			FUNC10(pools);
			return (NULL);
		}

		if (FUNC7(pools, FUNC13(elem), dst) != 0) {
			(void) FUNC22(hdl);
			FUNC10(dst);
			FUNC10(raw);
			FUNC10(pools);
			return (NULL);
		}
		FUNC10(dst);
	}

	FUNC10(raw);
	return (pools);
}