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
 uintptr_t FUNC0 (uintptr_t,size_t) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t os_page ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,size_t,int*) ; 
 void* FUNC4 (void*,size_t,size_t,size_t,int*) ; 

__attribute__((used)) static void *
FUNC5(size_t size, size_t alignment, bool *commit) {
	size_t alloc_size = size + alignment - os_page;
	/* Beware size_t wrap-around. */
	if (alloc_size < size) {
		return NULL;
	}

	void *ret;
	do {
		void *pages = FUNC3(NULL, alloc_size, alignment, commit);
		if (pages == NULL) {
			return NULL;
		}
		size_t leadsize = FUNC0((uintptr_t)pages, alignment)
		    - (uintptr_t)pages;
		ret = FUNC4(pages, alloc_size, leadsize, size, commit);
	} while (ret == NULL);

	FUNC2(ret != NULL);
	FUNC2(FUNC1(ret) == ret);
	return ret;
}