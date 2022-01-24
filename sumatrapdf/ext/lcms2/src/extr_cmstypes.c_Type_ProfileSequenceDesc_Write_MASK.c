#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
struct TYPE_3__ {size_t n; TYPE_2__* seq; } ;
typedef  TYPE_1__ cmsSEQ ;
struct TYPE_4__ {size_t deviceMfg; size_t deviceModel; size_t technology; int /*<<< orphan*/  Model; int /*<<< orphan*/  Manufacturer; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_2__ cmsPSEQDESC ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

__attribute__((used)) static
cmsBool  FUNC4(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSEQ* Seq = (cmsSEQ*) Ptr;
    cmsUInt32Number i;

    if (!FUNC1(ContextID, io, Seq->n)) return FALSE;

    for (i=0; i < Seq ->n; i++) {

        cmsPSEQDESC* sec = &Seq -> seq[i];

        if (!FUNC1(ContextID, io, sec ->deviceMfg)) return FALSE;
        if (!FUNC1(ContextID, io, sec ->deviceModel)) return FALSE;
        if (!FUNC2(ContextID, io, &sec ->attributes)) return FALSE;
        if (!FUNC1(ContextID, io, sec ->technology)) return FALSE;

        if (!FUNC0(ContextID, self, io, sec ->Manufacturer)) return FALSE;
        if (!FUNC0(ContextID, self, io, sec ->Model)) return FALSE;
    }

     return TRUE;

     FUNC3(nItems);
}