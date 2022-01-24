#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
typedef  int VARTYPE ;
struct TYPE_10__ {int vt; TYPE_1__* lpadesc; } ;
struct TYPE_11__ {TYPE_2__ tdesc; } ;
struct TYPE_12__ {TYPE_3__ elemdescVar; } ;
typedef  TYPE_4__ VARDESC ;
struct TYPE_13__ {scalar_t__ cVars; } ;
struct TYPE_9__ {int /*<<< orphan*/  tdescElem; } ;
typedef  TYPE_5__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FC_BOGUS_ARRAY ; 
 unsigned char FC_BOGUS_STRUCT ; 
 unsigned char FC_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
#define  VT_CARRAY 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static unsigned char FUNC5(ITypeInfo *typeinfo, TYPEATTR *attr)
{
    unsigned char fc = FC_STRUCT;
    VARDESC *desc;
    VARTYPE vt;
    WORD i;

    for (i = 0; i < attr->cVars; i++)
    {
        FUNC1(typeinfo, i, &desc);
        vt = desc->elemdescVar.tdesc.vt;

        switch (vt)
        {
        case VT_CARRAY:
            if (FUNC3(typeinfo, &desc->elemdescVar.tdesc.lpadesc->tdescElem) == FC_BOGUS_ARRAY)
                fc = FC_BOGUS_STRUCT;
            break;
        default:
            if (!FUNC4(vt))
            {
                FUNC0("unhandled type %u\n", vt);
                fc = FC_BOGUS_STRUCT;
            }
            break;
        }

        FUNC2(typeinfo, desc);
    }

    return fc;
}