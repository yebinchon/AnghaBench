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
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ MAX_MEMORY_FOR_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,scalar_t__) ; 

__attribute__((used)) static
void* FUNC2(cmsContext ContextID, void* Ptr, cmsUInt32Number size)
{

    if (size > MAX_MEMORY_FOR_ALLOC) return NULL;  // Never realloc over 512Mb

    return FUNC1(Ptr, size);

    FUNC0(ContextID);
}