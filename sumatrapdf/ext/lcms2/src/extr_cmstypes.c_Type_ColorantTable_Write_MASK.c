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
typedef  int /*<<< orphan*/  root ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
struct TYPE_6__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int cmsMAX_PATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 

__attribute__((used)) static
cmsBool  FUNC7(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsNAMEDCOLORLIST* NamedColorList = (cmsNAMEDCOLORLIST*) Ptr;
    cmsUInt32Number i, nColors;

    nColors = FUNC2(ContextID, NamedColorList);

    if (!FUNC1(ContextID, io, nColors)) return FALSE;

    for (i=0; i < nColors; i++) {

        char root[cmsMAX_PATH];
        cmsUInt16Number PCS[3];

        FUNC5(root, 0, sizeof(root));

        if (!FUNC3(ContextID, NamedColorList, i, root, NULL, NULL, PCS, NULL)) return 0;
        root[32] = 0;

        if (!io ->Write(ContextID, io, 32, root)) return FALSE;
        if (!FUNC0(ContextID, io, 3, PCS)) return FALSE;
    }

    return TRUE;

    FUNC4(nItems);
    FUNC4(self);
}