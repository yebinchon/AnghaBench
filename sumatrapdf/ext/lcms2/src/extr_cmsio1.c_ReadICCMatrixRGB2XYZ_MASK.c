#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * v; } ;
typedef  TYPE_1__ cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_5__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_2__ cmsCIEXYZ ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigBlueColorantTag ; 
 int /*<<< orphan*/  cmsSigGreenColorantTag ; 
 int /*<<< orphan*/  cmsSigRedColorantTag ; 

__attribute__((used)) static
cmsBool FUNC3(cmsContext ContextID, cmsMAT3* r, cmsHPROFILE hProfile)
{
    cmsCIEXYZ *PtrRed, *PtrGreen, *PtrBlue;

    FUNC0(r != NULL);

    PtrRed   = (cmsCIEXYZ *) FUNC2(ContextID, hProfile, cmsSigRedColorantTag);
    PtrGreen = (cmsCIEXYZ *) FUNC2(ContextID, hProfile, cmsSigGreenColorantTag);
    PtrBlue  = (cmsCIEXYZ *) FUNC2(ContextID, hProfile, cmsSigBlueColorantTag);

    if (PtrRed == NULL || PtrGreen == NULL || PtrBlue == NULL)
        return FALSE;

    FUNC1(ContextID, &r -> v[0], PtrRed -> X, PtrGreen -> X,  PtrBlue -> X);
    FUNC1(ContextID, &r -> v[1], PtrRed -> Y, PtrGreen -> Y,  PtrBlue -> Y);
    FUNC1(ContextID, &r -> v[2], PtrRed -> Z, PtrGreen -> Z,  PtrBlue -> Z);

    return TRUE;
}