#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
struct TYPE_20__ {int (* Tell ) (int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/  (* Seek ) (int /*<<< orphan*/ ,TYPE_1__*,int) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/ * cmsHANDLE ;
struct TYPE_21__ {int /*<<< orphan*/ * DisplayValue; int /*<<< orphan*/ * DisplayName; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ cmsDICTentry ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsBool ;
typedef  int /*<<< orphan*/  _cmsTagBase ;
struct TYPE_22__ {int /*<<< orphan*/  DisplayValue; int /*<<< orphan*/  DisplayName; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_3__ _cmsDICarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static
cmsBool FUNC14(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsHANDLE hDict = (cmsHANDLE) Ptr;
    const cmsDICTentry* p;
    cmsBool AnyName, AnyValue;
    cmsUInt32Number i, Count, Length;
    cmsUInt32Number DirectoryPos, CurrentPos, BaseOffset;
   _cmsDICarray a;

    if (hDict == NULL) return FALSE;

    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    // Let's inspect the dictionary
    Count = 0; AnyName = FALSE; AnyValue = FALSE;
    for (p = FUNC6(ContextID, hDict); p != NULL; p = FUNC7(ContextID, p)) {

        if (p ->DisplayName != NULL) AnyName = TRUE;
        if (p ->DisplayValue != NULL) AnyValue = TRUE;
        Count++;
    }

    Length = 16;
    if (AnyName)  Length += 8;
    if (AnyValue) Length += 8;

    if (!FUNC5(ContextID, io, Count)) return FALSE;
    if (!FUNC5(ContextID, io, Length)) return FALSE;

    // Keep starting position of offsets table
    DirectoryPos = io ->Tell(ContextID, io);

    // Allocate offsets array
    if (!FUNC0(ContextID, &a, Count, Length)) goto Error;

    // Write a fake directory to be filled latter on
    if (!FUNC2(ContextID, io, &a, Count, Length)) goto Error;

    // Write each element. Keep track of the size as well.
    p = FUNC6(ContextID, hDict);
    for (i=0; i < Count; i++) {

        if (!FUNC4(ContextID, io, &a.Name, i,  p ->Name, BaseOffset)) goto Error;
        if (!FUNC4(ContextID, io, &a.Value, i, p ->Value, BaseOffset)) goto Error;

        if (p ->DisplayName != NULL) {
            if (!FUNC3(ContextID, self, io, &a.DisplayName, i, p ->DisplayName, BaseOffset)) goto Error;
        }

        if (p ->DisplayValue != NULL) {
            if (!FUNC3(ContextID, self, io, &a.DisplayValue, i, p ->DisplayValue, BaseOffset)) goto Error;
        }

       p = FUNC7(ContextID, p);
    }

    // Write the directory
    CurrentPos = io ->Tell(ContextID, io);
    if (!io ->Seek(ContextID, io, DirectoryPos)) goto Error;

    if (!FUNC2(ContextID, io, &a, Count, Length)) goto Error;

    if (!io ->Seek(ContextID, io, CurrentPos)) goto Error;

    FUNC1(ContextID, &a);
    return TRUE;

Error:
    FUNC1(ContextID, &a);
    return FALSE;

    FUNC8(nItems);
}