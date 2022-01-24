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
typedef  float cmsFloat64Number ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC1(void* dst, const void* src)
{
    *(cmsFloat64Number*)dst = (FUNC0(*(cmsUInt16Number*)src)) / 65535.0f;
}