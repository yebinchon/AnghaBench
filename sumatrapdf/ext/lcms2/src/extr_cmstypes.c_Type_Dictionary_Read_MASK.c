#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsMLU ;
struct TYPE_12__ {int (* Tell ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/ * cmsHANDLE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
typedef  int /*<<< orphan*/  _cmsTagBase ;
struct TYPE_13__ {int /*<<< orphan*/  DisplayValue; int /*<<< orphan*/  DisplayName; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ _cmsDICarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsERROR_CORRUPTION_DETECTED ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
void *FUNC13(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
   cmsHANDLE hDict;
   cmsUInt32Number i, Count, Length;
   cmsUInt32Number BaseOffset;
   _cmsDICarray a;
   wchar_t *NameWCS = NULL, *ValueWCS = NULL;
   cmsMLU *DisplayNameMLU = NULL, *DisplayValueMLU=NULL;
   cmsBool rc;

    *nItems = 0;

    // Get actual position as a basis for element offsets
    BaseOffset = io ->Tell(ContextID, io) - sizeof(_cmsTagBase);

    // Get name-value record count
    if (!FUNC6(ContextID, io, &Count)) return NULL;
    SizeOfTag -= sizeof(cmsUInt32Number);

    // Get rec length
    if (!FUNC6(ContextID, io, &Length)) return NULL;
    SizeOfTag -= sizeof(cmsUInt32Number);

    // Check for valid lengths
    if (Length != 16 && Length != 24 && Length != 32) {
         FUNC11(ContextID, cmsERROR_UNKNOWN_EXTENSION, "Unknown record length in dictionary '%d'", Length);
         return NULL;
    }

    // Creates an empty dictionary
    hDict = FUNC8(ContextID);
    if (hDict == NULL) return NULL;

    // On depending on record size, create column arrays
    if (!FUNC0(ContextID, &a, Count, Length)) goto Error;

    // Read column arrays
    if (!FUNC2(ContextID, io, &a, Count, Length, BaseOffset)) goto Error;

    // Seek to each element and read it
    for (i=0; i < Count; i++) {

        if (!FUNC4(ContextID, io, &a.Name, i, &NameWCS)) goto Error;
        if (!FUNC4(ContextID, io, &a.Value, i, &ValueWCS)) goto Error;

        if (Length > 16) {
            if (!FUNC3(ContextID, self, io, &a.DisplayName, i, &DisplayNameMLU)) goto Error;
        }

        if (Length > 24) {
            if (!FUNC3(ContextID, self, io, &a.DisplayValue, i, &DisplayValueMLU)) goto Error;
        }

        if (NameWCS == NULL || ValueWCS == NULL) {

            FUNC11(ContextID, cmsERROR_CORRUPTION_DETECTED, "Bad dictionary Name/Value");
            rc = FALSE;
        }
        else {

            rc = FUNC7(ContextID, hDict, NameWCS, ValueWCS, DisplayNameMLU, DisplayValueMLU);
        }

        if (NameWCS != NULL) FUNC5(ContextID, NameWCS);
        if (ValueWCS != NULL) FUNC5(ContextID, ValueWCS);
        if (DisplayNameMLU != NULL) FUNC10(ContextID, DisplayNameMLU);
        if (DisplayValueMLU != NULL) FUNC10(ContextID, DisplayValueMLU);

        if (!rc) goto Error;
    }

   FUNC1(ContextID, &a);
   *nItems = 1;
   return (void*) hDict;

Error:
   FUNC1(ContextID, &a);
   FUNC9(ContextID, hDict);
   return NULL;
}