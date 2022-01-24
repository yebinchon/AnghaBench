#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
struct TYPE_8__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  Colorant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsERROR_RANGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ cmsMAXCHANNELS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,char*,int,int) ; 

__attribute__((used)) static
void *FUNC11(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{

    cmsUInt32Number      vendorFlag;     // Bottom 16 bits for ICC use
    cmsUInt32Number      count;          // Count of named colors
    cmsUInt32Number      nDeviceCoords;  // Num of device coordinates
    char                 prefix[32];     // Prefix for each color name
    char                 suffix[32];     // Suffix for each color name
    cmsNAMEDCOLORLIST*   v;
    cmsUInt32Number      i;
    FUNC6(self);


    *nItems = 0;
    if (!FUNC1(ContextID, io, &vendorFlag)) return NULL;
    if (!FUNC1(ContextID, io, &count)) return NULL;
    if (!FUNC1(ContextID, io, &nDeviceCoords)) return NULL;

    if (io -> Read(ContextID, io,prefix, 32, 1) != 1) return NULL;
    if (io -> Read(ContextID, io,suffix, 32, 1) != 1) return NULL;

    prefix[31] = suffix[31] = 0;

    v = FUNC2(ContextID, count, nDeviceCoords, prefix, suffix);
    if (v == NULL) {
        FUNC5(ContextID, cmsERROR_RANGE, "Too many named colors '%d'", count);
        return NULL;
    }

    if (nDeviceCoords > cmsMAXCHANNELS) {
        FUNC5(ContextID, cmsERROR_RANGE, "Too many device coordinates '%d'", nDeviceCoords);
        goto Error;
    }
    for (i=0; i < count; i++) {

        cmsUInt16Number PCS[3];
        cmsUInt16Number Colorant[cmsMAXCHANNELS];
        char Root[33];

        FUNC7(Colorant, 0, sizeof(Colorant));
        if (io -> Read(ContextID, io,Root, 32, 1) != 1) goto Error;
        Root[32] = 0;  // To prevent exploits

        if (!FUNC0(ContextID, io, 3, PCS)) goto Error;
        if (!FUNC0(ContextID, io, nDeviceCoords, Colorant)) goto Error;

        if (!FUNC3(ContextID, v, Root, PCS, Colorant)) goto Error;
    }

    *nItems = 1;
    return (void*) v ;

Error:
    FUNC4(ContextID, v);
    return NULL;

    FUNC6(SizeOfTag);
}