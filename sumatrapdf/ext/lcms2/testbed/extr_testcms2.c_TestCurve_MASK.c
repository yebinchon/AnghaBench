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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  int cmsFloat32Number ;
typedef  int (* Function ) (int) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FLOAT_PRECISSION ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int kNumPoints ; 

__attribute__((used)) static cmsInt32Number FUNC3( const char* label, cmsToneCurve* curve, Function fn)
{
    cmsInt32Number ok = 1;
    int i;
    for (i = 0; i < kNumPoints*3; i++) {

        cmsFloat32Number x = (cmsFloat32Number)i / (kNumPoints*3 - 1);
        cmsFloat32Number expectedY = fn(x);
        cmsFloat32Number out = FUNC2(FUNC0(),  curve, x);

        if (!FUNC1(label, expectedY, out, FLOAT_PRECISSION)) {
            ok = 0;
        }
    }
    return ok;
}