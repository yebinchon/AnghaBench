#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsMLU ;
struct TYPE_5__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char*) ;} ;
typedef  TYPE_1__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct _cms_typehandler_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,char*) ; 

__attribute__((used)) static
cmsBool  FUNC6(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* mlu, const char* Section)
{
 cmsUInt32Number TextSize;
 char* Text;
 FUNC4(self);

    TextSize = FUNC3(ContextID, mlu, "PS", Section, NULL, 0);
    Text     = (char*) FUNC1(ContextID, TextSize);

    if (!FUNC2(ContextID, io, TextSize)) return FALSE;

    if (FUNC3(ContextID, mlu, "PS", Section, Text, TextSize) == 0) return FALSE;

    if (!io ->Write(ContextID, io, TextSize, Text)) return FALSE;
    FUNC0(ContextID, Text);

    return TRUE;
}