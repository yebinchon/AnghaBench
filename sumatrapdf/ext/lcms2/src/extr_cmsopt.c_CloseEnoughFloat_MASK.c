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
typedef  scalar_t__ cmsFloat64Number ;
typedef  int cmsBool ;

/* Variables and functions */
 float FUNC0 (scalar_t__) ; 

__attribute__((used)) static
cmsBool FUNC1(cmsFloat64Number a, cmsFloat64Number b)
{
       return FUNC0(b - a) < 0.00001f;
}