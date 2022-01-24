#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_7__ {double Y; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {double Y; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {double Y; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {TYPE_3__ Blue; TYPE_2__ Green; TYPE_1__ Red; } ;
typedef  TYPE_4__ cmsCIExyYTRIPLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static
void *FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsCIExyYTRIPLE* chrm;
    cmsUInt16Number nChans, Table;
    FUNC4(self);

    *nItems = 0;
    chrm =  (cmsCIExyYTRIPLE*) FUNC1(ContextID, sizeof(cmsCIExyYTRIPLE));
    if (chrm == NULL) return NULL;

    if (!FUNC3(ContextID, io, &nChans)) goto Error;

    // Let's recover from a bug introduced in early versions of lcms1
    if (nChans == 0 && SizeOfTag == 32) {

        if (!FUNC3(ContextID, io, NULL)) goto Error;
        if (!FUNC3(ContextID, io, &nChans)) goto Error;
    }

    if (nChans != 3) goto Error;

    if (!FUNC3(ContextID, io, &Table)) goto Error;

    if (!FUNC2(ContextID, io, &chrm ->Red.x)) goto Error;
    if (!FUNC2(ContextID, io, &chrm ->Red.y)) goto Error;

    chrm ->Red.Y = 1.0;

    if (!FUNC2(ContextID, io, &chrm ->Green.x)) goto Error;
    if (!FUNC2(ContextID, io, &chrm ->Green.y)) goto Error;

    chrm ->Green.Y = 1.0;

    if (!FUNC2(ContextID, io, &chrm ->Blue.x)) goto Error;
    if (!FUNC2(ContextID, io, &chrm ->Blue.y)) goto Error;

    chrm ->Blue.Y = 1.0;

    *nItems = 1;
    return (void*) chrm;

Error:
    FUNC0(ContextID, (void*) chrm);
    return NULL;

    FUNC4(SizeOfTag);
}