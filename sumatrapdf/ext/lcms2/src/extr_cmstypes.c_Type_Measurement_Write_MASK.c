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
typedef  struct _cms_typehandler_struct* cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
struct TYPE_2__ {int /*<<< orphan*/  IlluminantType; int /*<<< orphan*/  Flare; int /*<<< orphan*/  Geometry; int /*<<< orphan*/  Backing; int /*<<< orphan*/  Observer; } ;
typedef  TYPE_1__ cmsICCMeasurementConditions ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
cmsBool  FUNC4(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsICCMeasurementConditions* mc =(cmsICCMeasurementConditions*) Ptr;

    if (!FUNC1(ContextID, io, mc->Observer)) return FALSE;
    if (!FUNC2(ContextID, io,    &mc->Backing)) return FALSE;
    if (!FUNC1(ContextID, io, mc->Geometry)) return FALSE;
    if (!FUNC0(ContextID, io, mc->Flare)) return FALSE;
    if (!FUNC1(ContextID, io, mc->IlluminantType)) return FALSE;

    return TRUE;

    FUNC3(nItems);
    FUNC3(self);
}