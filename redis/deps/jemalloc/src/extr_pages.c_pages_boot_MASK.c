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

/* Variables and functions */
 int MAP_ANON ; 
 int MAP_NORESERVE ; 
 int MAP_PRIVATE ; 
 scalar_t__ PAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int mmap_flags ; 
 scalar_t__ opt_abort ; 
 int os_overcommits ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ os_page ; 
 scalar_t__ FUNC6 () ; 
 void* FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (void*,scalar_t__) ; 
 scalar_t__ pages_can_purge_lazy ; 
 int pages_can_purge_lazy_runtime ; 
 scalar_t__ FUNC9 (void*,scalar_t__) ; 

bool
FUNC10(void) {
	os_page = FUNC6();
	if (os_page > PAGE) {
		FUNC3("<jemalloc>: Unsupported system page size\n");
		if (opt_abort) {
			FUNC0();
		}
		return true;
	}

#ifndef _WIN32
	mmap_flags = MAP_PRIVATE | MAP_ANON;
#endif

#ifdef JEMALLOC_SYSCTL_VM_OVERCOMMIT
	os_overcommits = os_overcommits_sysctl();
#elif defined(JEMALLOC_PROC_SYS_VM_OVERCOMMIT_MEMORY)
	os_overcommits = os_overcommits_proc();
#  ifdef MAP_NORESERVE
	if (os_overcommits) {
		mmap_flags |= MAP_NORESERVE;
	}
#  endif
#else
	os_overcommits = false;
#endif

	FUNC2();

	/* Detect lazy purge runtime support. */
	if (pages_can_purge_lazy) {
		bool committed = false;
		void *madv_free_page = FUNC7(NULL, PAGE, PAGE, &committed);
		if (madv_free_page == NULL) {
			return true;
		}
		FUNC1(pages_can_purge_lazy_runtime);
		if (FUNC9(madv_free_page, PAGE)) {
			pages_can_purge_lazy_runtime = false;
		}
		FUNC8(madv_free_page, PAGE);
	}

	return false;
}