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
typedef  int WORD ;
struct TYPE_4__ {int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int IMPLTYPEFLAG_FDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(ITypeInfo *typeinfo, WORD count, GUID *iid)
{
    ITypeInfo *refinfo;
    HREFTYPE reftype;
    TYPEATTR *attr;
    int flags, i;

    for (i = 0; i < count; ++i)
    {
        FUNC0(typeinfo, i, &flags);
        if (flags & IMPLTYPEFLAG_FDEFAULT)
            break;
    }

    /* If no interface was explicitly marked default, choose the first one. */
    if (i == count)
        i = 0;

    FUNC2(typeinfo, i, &reftype);
    FUNC1(typeinfo, reftype, &refinfo);
    FUNC3(refinfo, &attr);
    *iid = attr->guid;
    FUNC5(refinfo, attr);
    FUNC4(refinfo);
}