#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int cmsUInt32Number ;
struct TYPE_7__ {int (* Read ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
struct TYPE_8__ {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  flag; } ;
typedef  TYPE_2__ cmsICCData ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct _cms_typehandler_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static
void *FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsICCData* BinData;
    cmsUInt32Number LenOfData;
    FUNC3(self);

    *nItems = 0;

    if (SizeOfTag < sizeof(cmsUInt32Number)) return NULL;

    LenOfData = SizeOfTag - sizeof(cmsUInt32Number);
    if (LenOfData > INT_MAX) return NULL;

    BinData = (cmsICCData*) FUNC1(ContextID, sizeof(cmsICCData) + LenOfData - 1);
    if (BinData == NULL) return NULL;

    BinData ->len = LenOfData;
    if (!FUNC2(ContextID, io, &BinData->flag)) {
        FUNC0(ContextID, BinData);
        return NULL;
    }

    if (io -> Read(ContextID, io, BinData ->data, sizeof(cmsUInt8Number), LenOfData) != LenOfData) {

        FUNC0(ContextID, BinData);
        return NULL;
    }

    *nItems = 1;

    return (void*) BinData;
}