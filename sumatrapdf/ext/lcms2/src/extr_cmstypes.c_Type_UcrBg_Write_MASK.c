#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  Desc; TYPE_2__* Bg; TYPE_1__* Ucr; } ;
typedef  TYPE_3__ cmsUcrBg ;
typedef  scalar_t__ cmsUInt32Number ;
struct TYPE_12__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,char*) ;} ;
typedef  TYPE_4__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_10__ {int /*<<< orphan*/  Table16; int /*<<< orphan*/  nEntries; } ;
struct TYPE_9__ {int /*<<< orphan*/  Table16; int /*<<< orphan*/  nEntries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  cmsNoCountry ; 
 int /*<<< orphan*/  cmsNoLanguage ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,char*) ; 

__attribute__((used)) static
cmsBool  FUNC7(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsUcrBg* Value = (cmsUcrBg*) Ptr;
    cmsUInt32Number TextSize;
    char* Text;
    FUNC5(self);

    // First curve is Under color removal
    if (!FUNC3(ContextID, io, Value ->Ucr ->nEntries)) return FALSE;
    if (!FUNC2(ContextID, io, Value ->Ucr ->nEntries, Value ->Ucr ->Table16)) return FALSE;

    // Then black generation
    if (!FUNC3(ContextID, io, Value ->Bg ->nEntries)) return FALSE;
    if (!FUNC2(ContextID, io, Value ->Bg ->nEntries, Value ->Bg ->Table16)) return FALSE;

    // Now comes the text. The length is specified by the tag size
    TextSize = FUNC4(ContextID, Value ->Desc, cmsNoLanguage, cmsNoCountry, NULL, 0);
    Text     = (char*) FUNC1(ContextID, TextSize);
    if (FUNC4(ContextID, Value ->Desc, cmsNoLanguage, cmsNoCountry, Text, TextSize) != TextSize) return FALSE;

    if (!io ->Write(ContextID, io, TextSize, Text)) return FALSE;
    FUNC0(ContextID, Text);

    return TRUE;

    FUNC5(nItems);
}