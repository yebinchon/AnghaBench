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
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
int FUNC4(cmsContext ContextID, cmsIOHANDLER* m, cmsToneCurve* Curve, cmsCIEXYZ* BlackPoint)
{

    FUNC3(ContextID, m, "[ /CIEBasedA\n");
    FUNC3(ContextID, m, "  <<\n");

    FUNC3(ContextID, m, "/DecodeA ");

    FUNC0(ContextID, m, Curve);

    FUNC3(ContextID, m, " \n");

    FUNC3(ContextID, m, "/MatrixA [ 0.9642 1.0000 0.8249 ]\n");
    FUNC3(ContextID, m, "/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\n");

    FUNC2(ContextID, m, BlackPoint);
    FUNC1(ContextID, m, INTENT_PERCEPTUAL);

    FUNC3(ContextID, m, ">>\n");
    FUNC3(ContextID, m, "]\n");

    return 1;
}