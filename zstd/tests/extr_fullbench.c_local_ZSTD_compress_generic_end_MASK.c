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
 size_t FUNC0 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  g_cstream ; 

__attribute__((used)) static size_t
FUNC1(const void* src, size_t srcSize,
                                void* dst, size_t dstCapacity,
                                void* payload)
{
    (void)payload;
    return FUNC0(g_cstream, dst, dstCapacity, src, srcSize);
}