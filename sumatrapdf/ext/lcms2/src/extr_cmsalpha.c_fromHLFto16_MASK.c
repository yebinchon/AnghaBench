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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  float cmsFloat32Number ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 

__attribute__((used)) static
void FUNC3(void* dst, const void* src)
{
#ifndef CMS_NO_HALF_SUPPORT
       cmsFloat32Number n = FUNC0(*(cmsUInt16Number*)src);
       *(cmsUInt16Number*)dst = FUNC1(n * 65535.0f);
#else
    cmsUNUSED_PARAMETER(dst);
    cmsUNUSED_PARAMETER(src);
#endif
}