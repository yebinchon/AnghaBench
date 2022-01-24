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
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
cmsBool FUNC2(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsFloat64Number* Value = (cmsFloat64Number*) Ptr;
    cmsUInt32Number i;

    for (i=0; i < nItems; i++) {

        if (!FUNC0(ContextID, io, Value[i])) return FALSE;
    }

    return TRUE;

    FUNC1(self);
}