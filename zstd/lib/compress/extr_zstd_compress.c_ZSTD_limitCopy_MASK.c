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
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t const) ; 

__attribute__((used)) static size_t FUNC2(void* dst, size_t dstCapacity,
                       const void* src, size_t srcSize)
{
    size_t const length = FUNC0(dstCapacity, srcSize);
    if (length) FUNC1(dst, src, length);
    return length;
}