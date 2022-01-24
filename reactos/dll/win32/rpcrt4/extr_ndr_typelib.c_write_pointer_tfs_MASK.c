#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ vt; int /*<<< orphan*/  hreftype; } ;
struct TYPE_9__ {int typekind; TYPE_1__ tdescAlias; int /*<<< orphan*/  cImplTypes; int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ TYPEDESC ;
typedef  TYPE_2__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned char FC_ALLOCED_ON_STACK ; 
 unsigned char FC_ENUM32 ; 
 unsigned char FC_PAD ; 
 unsigned char FC_POINTER_DEREF ; 
 unsigned char FC_RP ; 
 unsigned char FC_SIMPLE_POINTER ; 
 unsigned char FC_UP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
#define  TKIND_ALIAS 133 
#define  TKIND_COCLASS 132 
#define  TKIND_DISPATCH 131 
#define  TKIND_ENUM 130 
#define  TKIND_INTERFACE 129 
#define  TKIND_RECORD 128 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ VT_PTR ; 
 scalar_t__ VT_UNKNOWN ; 
 scalar_t__ VT_USERDEFINED ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned char FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,unsigned char*,size_t*,TYPE_2__*) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,unsigned char*,size_t*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC13(ITypeInfo *typeinfo, unsigned char *str,
        size_t *len, TYPEDESC *desc, BOOL toplevel, BOOL onstack)
{
    unsigned char basetype, flags = 0;
    size_t ref, off = *len;
    ITypeInfo *refinfo;
    TYPEATTR *attr;
    GUID guid;

    if (desc->vt == VT_USERDEFINED)
    {
        FUNC1(typeinfo, desc->hreftype, &refinfo);
        FUNC2(refinfo, &attr);

        switch (attr->typekind)
        {
        case TKIND_ENUM:
            FUNC7(!toplevel);  /* toplevel base-type pointers should use IsSimpleRef */
            FUNC5(str, *len, FC_UP);
            FUNC5(str, *len, FC_SIMPLE_POINTER);
            FUNC5(str, *len, FC_ENUM32);
            FUNC5(str, *len, FC_PAD);
            break;
        case TKIND_RECORD:
            FUNC7(!toplevel);  /* toplevel struct pointers should use IsSimpleRef */
            ref = FUNC11(refinfo, str, len, attr);
            off = *len;
            FUNC5 (str, *len, FC_UP);
            FUNC5 (str, *len, 0);
            FUNC6(str, *len, ref - *len);
            break;
        case TKIND_INTERFACE:
        case TKIND_DISPATCH:
            FUNC10(str, len, &attr->guid);
            break;
        case TKIND_COCLASS:
            FUNC9(refinfo, attr->cImplTypes, &guid);
            FUNC10(str, len, &guid);
            break;
        case TKIND_ALIAS:
            off = FUNC13(refinfo, str, len, &attr->tdescAlias, toplevel, onstack);
            break;
        default:
            FUNC0("unhandled kind %#x\n", attr->typekind);
            FUNC6(str, *len, 0);
            break;
        }

        FUNC4(refinfo, attr);
        FUNC3(refinfo);
    }
    else if ((basetype = FUNC8(desc->vt)))
    {
        FUNC7(!toplevel); /* toplevel base-type pointers should use IsSimpleRef */
        FUNC5(str, *len, FC_UP);
        FUNC5(str, *len, FC_SIMPLE_POINTER);
        FUNC5(str, *len, basetype);
        FUNC5(str, *len, FC_PAD);
    }
    else
    {
        ref = FUNC12(typeinfo, str, len, desc, FALSE, FALSE);

        if (onstack) flags |= FC_ALLOCED_ON_STACK;
        if (desc->vt == VT_PTR || desc->vt == VT_UNKNOWN || desc->vt == VT_DISPATCH)
            flags |= FC_POINTER_DEREF;

        off = *len;

        FUNC5 (str, *len, toplevel ? FC_RP : FC_UP);
        FUNC5 (str, *len, flags);
        FUNC6(str, *len, ref - *len);
    }

    return off;
}