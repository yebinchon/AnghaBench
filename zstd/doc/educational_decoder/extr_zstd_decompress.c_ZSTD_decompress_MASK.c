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
typedef  int /*<<< orphan*/  dictionary_t ;

/* Variables and functions */
 size_t FUNC0 (void* const,size_t const,void const* const,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

size_t FUNC3(void *const dst, const size_t dst_len,
                       const void *const src, const size_t src_len) {
    dictionary_t* uninit_dict = FUNC1();
    size_t const decomp_size = FUNC0(dst, dst_len, src,
                                                         src_len, uninit_dict);
    FUNC2(uninit_dict);
    return decomp_size;
}