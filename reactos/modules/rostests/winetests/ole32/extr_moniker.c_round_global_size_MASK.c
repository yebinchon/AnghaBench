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
typedef  int SIZE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_FIXED ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static SIZE_T FUNC3(SIZE_T size)
{
    static SIZE_T global_size_alignment = -1;
    if (global_size_alignment == -1)
    {
        void *p = FUNC0(GMEM_FIXED, 1);
        global_size_alignment = FUNC2(p);
        FUNC1(p);
    }

    return ((size + global_size_alignment - 1) & ~(global_size_alignment - 1));
}