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
typedef  int /*<<< orphan*/  U64 ;

/* Variables and functions */
 scalar_t__ XXH_CPU_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static U64 FUNC2(const void* ptr)
{
    return XXH_CPU_LITTLE_ENDIAN ? FUNC1(FUNC0(ptr)) : FUNC0(ptr);
}