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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_MEMORY_FOR_ALLOC ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void* FUNC2(cmsContext ContextID, const void* Org, cmsUInt32Number size)
{
    void* mem;

    if (size > MAX_MEMORY_FOR_ALLOC) return NULL;  // Never dup over 512Mb

    mem = FUNC0(ContextID, size);

    if (mem != NULL && Org != NULL)
        FUNC1(mem, Org, size);

    return mem;
}