#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsMLU ;
struct TYPE_4__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  cmsNoCountry ; 
 int /*<<< orphan*/  cmsNoLanguage ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char*) ; 

__attribute__((used)) static
cmsBool FUNC5(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsMLU* mlu = (cmsMLU*) Ptr;
    cmsUInt32Number size;
    cmsBool  rc;
    char* Text;
    FUNC3(self);

    // Get the size of the string. Note there is an extra "\0" at the end
    size = FUNC2(ContextID, mlu, cmsNoLanguage, cmsNoCountry, NULL, 0);
    if (size == 0) return FALSE;       // Cannot be zero!

    // Create memory
    Text = (char*) FUNC1(ContextID, size);
    if (Text == NULL) return FALSE;

    FUNC2(ContextID, mlu, cmsNoLanguage, cmsNoCountry, Text, size);

    // Write it, including separator
    rc = io ->Write(ContextID, io, size, Text);

    FUNC0(ContextID, Text);
    return rc;

    FUNC3(nItems);
}