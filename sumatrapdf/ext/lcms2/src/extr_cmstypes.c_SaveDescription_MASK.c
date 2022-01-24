#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _cms_typehandler_struct {int ICCVersion; } ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigMultiLocalizedUnicodeType ; 
 int /*<<< orphan*/  cmsSigTextDescriptionType ; 

__attribute__((used)) static
cmsBool  FUNC3(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsMLU* Text)
{
    if (self ->ICCVersion < 0x4000000) {

        if (!FUNC2(ContextID, io, cmsSigTextDescriptionType)) return FALSE;
        return FUNC1(ContextID, self, io, Text, 1);
    }
    else {
        if (!FUNC2(ContextID, io, cmsSigMultiLocalizedUnicodeType)) return FALSE;
        return FUNC0(ContextID, self, io, Text, 1);
    }
}