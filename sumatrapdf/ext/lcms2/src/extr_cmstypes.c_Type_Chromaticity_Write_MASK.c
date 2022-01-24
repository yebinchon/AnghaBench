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
typedef  struct _cms_typehandler_struct* cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {TYPE_2__ Blue; TYPE_1__ Green; TYPE_3__ Red; } ;
typedef  TYPE_4__ cmsCIExyYTRIPLE ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
cmsBool  FUNC3(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsCIExyYTRIPLE* chrm = (cmsCIExyYTRIPLE*) Ptr;

    if (!FUNC1(ContextID, io, 3)) return FALSE;        // nChannels
    if (!FUNC1(ContextID, io, 0)) return FALSE;        // Table

    if (!FUNC0(ContextID, chrm -> Red.x,   chrm -> Red.y, io)) return FALSE;
    if (!FUNC0(ContextID, chrm -> Green.x, chrm -> Green.y, io)) return FALSE;
    if (!FUNC0(ContextID, chrm -> Blue.x,  chrm -> Blue.y, io)) return FALSE;

    return TRUE;

    FUNC2(nItems);
    FUNC2(self);
}