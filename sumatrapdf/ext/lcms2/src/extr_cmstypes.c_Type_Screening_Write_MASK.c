#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
struct TYPE_4__ {size_t Flag; size_t nChannels; TYPE_1__* Channels; } ;
typedef  TYPE_2__ cmsScreening ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_3__ {size_t SpotShape; int /*<<< orphan*/  ScreenAngle; int /*<<< orphan*/  Frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

__attribute__((used)) static
cmsBool FUNC3(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsScreening* sc = (cmsScreening* ) Ptr;
    cmsUInt32Number i;

    if (!FUNC1(ContextID, io, sc ->Flag)) return FALSE;
    if (!FUNC1(ContextID, io, sc ->nChannels)) return FALSE;

    for (i=0; i < sc ->nChannels; i++) {

        if (!FUNC0(ContextID, io, sc ->Channels[i].Frequency)) return FALSE;
        if (!FUNC0(ContextID, io, sc ->Channels[i].ScreenAngle)) return FALSE;
        if (!FUNC1(ContextID, io, sc ->Channels[i].SpotShape)) return FALSE;
    }

    return TRUE;

    FUNC2(nItems);
    FUNC2(self);
}