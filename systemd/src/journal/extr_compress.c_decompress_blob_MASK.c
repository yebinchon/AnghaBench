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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int EBADMSG ; 
 int OBJECT_COMPRESSED_LZ4 ; 
 int OBJECT_COMPRESSED_XZ ; 
 int FUNC0 (void const*,int /*<<< orphan*/ ,void**,size_t*,size_t*,size_t) ; 
 int FUNC1 (void const*,int /*<<< orphan*/ ,void**,size_t*,size_t*,size_t) ; 

int FUNC2(int compression,
                    const void *src, uint64_t src_size,
                    void **dst, size_t *dst_alloc_size, size_t* dst_size, size_t dst_max) {
        if (compression == OBJECT_COMPRESSED_XZ)
                return FUNC1(src, src_size,
                                          dst, dst_alloc_size, dst_size, dst_max);
        else if (compression == OBJECT_COMPRESSED_LZ4)
                return FUNC0(src, src_size,
                                           dst, dst_alloc_size, dst_size, dst_max);
        else
                return -EBADMSG;
}