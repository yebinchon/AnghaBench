#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int typekind; } ;
struct TYPE_7__ {int vt; int /*<<< orphan*/  hreftype; int /*<<< orphan*/  lpadesc; int /*<<< orphan*/  lptdesc; } ;
typedef  TYPE_1__ TYPEDESC ;
typedef  TYPE_2__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
#define  TKIND_RECORD 131 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
#define  VT_CARRAY 130 
#define  VT_PTR 129 
#define  VT_USERDEFINED 128 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,unsigned char*,size_t*,TYPE_2__*) ; 

__attribute__((used)) static size_t FUNC13(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEDESC *desc, BOOL toplevel, BOOL onstack)
{
    ITypeInfo *refinfo;
    TYPEATTR *attr;
    size_t off;

    FUNC5("vt %d%s\n", desc->vt, toplevel ? " (toplevel)" : "");

    if ((off = FUNC10(desc->vt)))
        return off;

    switch (desc->vt)
    {
    case VT_PTR:
        return FUNC11(typeinfo, str, len, desc->lptdesc, toplevel, onstack);
    case VT_CARRAY:
        return FUNC9(typeinfo, str, len, desc->lpadesc);
    case VT_USERDEFINED:
        FUNC1(typeinfo, desc->hreftype, &refinfo);
        FUNC2(refinfo, &attr);

        switch (attr->typekind)
        {
        case TKIND_RECORD:
            off = FUNC12(refinfo, str, len, attr);
            break;
        default:
            FUNC0("unhandled kind %u\n", attr->typekind);
            off = *len;
            FUNC6(str, *len, 0);
            break;
        }

        FUNC4(refinfo, attr);
        FUNC3(refinfo);
        break;
    default:
        /* base types are always embedded directly */
        FUNC7(!FUNC8(desc->vt));
        FUNC0("unhandled type %u\n", desc->vt);
        off = *len;
        FUNC6(str, *len, 0);
        break;
    }

    return off;
}