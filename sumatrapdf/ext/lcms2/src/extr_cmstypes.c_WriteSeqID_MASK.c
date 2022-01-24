#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct _cms_typehandler_struct {int dummy; } ;
typedef  size_t cmsUInt32Number ;
struct TYPE_10__ {TYPE_2__* seq; } ;
typedef  TYPE_3__ cmsSEQ ;
struct TYPE_11__ {int /*<<< orphan*/  (* Write ) (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_8__ {int /*<<< orphan*/  ID8; } ;
struct TYPE_9__ {int /*<<< orphan*/  Description; TYPE_1__ ProfileID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct _cms_typehandler_struct*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsBool FUNC3(cmsContext ContextID, struct _cms_typehandler_struct* self,
                                             cmsIOHANDLER* io,
                                             void* Cargo,
                                             cmsUInt32Number n,
                                             cmsUInt32Number SizeOfTag)
{
    cmsSEQ* Seq = (cmsSEQ*) Cargo;

    if (!io ->Write(ContextID, io, 16, Seq ->seq[n].ProfileID.ID8)) return FALSE;

    // Store here the MLU
    if (!FUNC0(ContextID, self, io, Seq ->seq[n].Description)) return FALSE;

    return TRUE;

    FUNC1(SizeOfTag);
}