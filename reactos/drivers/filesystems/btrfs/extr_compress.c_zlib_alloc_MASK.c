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
 int /*<<< orphan*/  ALLOC_TAG_ZLIB ; 
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void* FUNC2(void* opaque, unsigned int items, unsigned int size) {
    FUNC1(opaque);

    return FUNC0(PagedPool, items * size, ALLOC_TAG_ZLIB);
}