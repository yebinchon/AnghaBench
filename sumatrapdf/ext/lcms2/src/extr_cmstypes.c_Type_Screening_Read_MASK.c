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
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
struct TYPE_5__ {int Flag; int nChannels; TYPE_1__* Channels; } ;
typedef  TYPE_2__ cmsScreening ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_4__ {int SpotShape; int /*<<< orphan*/  ScreenAngle; int /*<<< orphan*/  Frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

__attribute__((used)) static
void *FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsScreening* sc = NULL;
    cmsUInt32Number i;

    sc = (cmsScreening*) FUNC1(ContextID, sizeof(cmsScreening));
    if (sc == NULL) return NULL;

    *nItems = 0;

    if (!FUNC3(ContextID, io, &sc ->Flag)) goto Error;
    if (!FUNC3(ContextID, io, &sc ->nChannels)) goto Error;

    if (sc ->nChannels > cmsMAXCHANNELS - 1)
        sc ->nChannels = cmsMAXCHANNELS - 1;

    for (i=0; i < sc ->nChannels; i++) {

        if (!FUNC2(ContextID, io, &sc ->Channels[i].Frequency)) goto Error;
        if (!FUNC2(ContextID, io, &sc ->Channels[i].ScreenAngle)) goto Error;
        if (!FUNC3(ContextID, io, &sc ->Channels[i].SpotShape)) goto Error;
    }


    *nItems = 1;

    return (void*) sc;

Error:
    if (sc != NULL)
        FUNC0(ContextID, sc);

    return NULL;
    FUNC4(self);
    FUNC4(SizeOfTag);
}