#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_2__ {int /*<<< orphan*/ * TheCurves; } ;
typedef  TYPE_1__ _cmsStageToneCurvesData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

__attribute__((used)) static
cmsBool FUNC2(cmsContext ContextID, struct _cms_typehandler_struct* self,
                      cmsIOHANDLER* io,
                      void* Cargo,
                      cmsUInt32Number n,
                      cmsUInt32Number SizeOfTag)
{
    _cmsStageToneCurvesData* Curves  = (_cmsStageToneCurvesData*) Cargo;

    return FUNC0(ContextID, io, Curves ->TheCurves[n]);

    FUNC1(SizeOfTag);
    FUNC1(self);
}