#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  void cmsStage ;
struct TYPE_6__ {scalar_t__ (* Tell ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  _cmsTagBase ;

/* Variables and functions */
 int /*<<< orphan*/  ReadMPECurve ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
void *FUNC8(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsStage* mpe = NULL;
    cmsUInt16Number InputChans, OutputChans;
    cmsUInt32Number i, BaseOffset;
    cmsToneCurve** GammaTables;

    *nItems = 0;

    // Get actual position as a basis for element offsets
    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    if (!FUNC3(ContextID, io, &InputChans)) return NULL;
    if (!FUNC3(ContextID, io, &OutputChans)) return NULL;

    if (InputChans != OutputChans) return NULL;

    GammaTables = (cmsToneCurve**) FUNC1(ContextID, InputChans, sizeof(cmsToneCurve*));
    if (GammaTables == NULL) return NULL;

    if (FUNC0(ContextID, self, io, InputChans, BaseOffset, GammaTables, ReadMPECurve)) {

        mpe = FUNC5(ContextID, InputChans, GammaTables);
    }
    else {
        mpe = NULL;
    }

    for (i=0; i < InputChans; i++) {
        if (GammaTables[i]) FUNC4(ContextID, GammaTables[i]);
    }

    FUNC2(ContextID, GammaTables);
    *nItems = (mpe != NULL) ? 1U : 0;
    return mpe;

    FUNC6(SizeOfTag);
}