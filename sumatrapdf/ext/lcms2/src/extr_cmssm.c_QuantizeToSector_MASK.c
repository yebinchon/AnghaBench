#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double alpha; double theta; } ;
typedef  TYPE_1__ cmsSpherical ;

/* Variables and functions */
 double SECTORS ; 
 scalar_t__ FUNC0 (double) ; 

__attribute__((used)) static
void FUNC1(const cmsSpherical* sp, int* alpha, int* theta)
{
    *alpha = (int) FUNC0(((sp->alpha * (SECTORS)) / 360.0) );
    *theta = (int) FUNC0(((sp->theta * (SECTORS)) / 180.0) );

    if (*alpha >= SECTORS)
        *alpha = SECTORS-1;
    if (*theta >= SECTORS)
        *theta = SECTORS-1;
}