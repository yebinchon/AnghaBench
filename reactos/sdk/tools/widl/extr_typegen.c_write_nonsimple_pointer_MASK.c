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
typedef  int /*<<< orphan*/  type_t ;
typedef  enum type_context { ____Placeholder_type_context } type_context ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 unsigned char FC_ALLOCED_ON_STACK ; 
 unsigned char FC_POINTER_DEREF ; 
 int FC_RP ; 
 scalar_t__ MODE_Oif ; 
 int /*<<< orphan*/  TDT_ALL_TYPES ; 
#define  TGT_CTXT_HANDLE 132 
#define  TGT_CTXT_HANDLE_POINTER 131 
#define  TGT_IFACE_POINTER 130 
#define  TGT_POINTER 129 
#define  TGT_STRING 128 
 int TYPE_CONTEXT_TOPLEVELPARAM ; 
 int /*<<< orphan*/  current_func ; 
 int /*<<< orphan*/  current_iface ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,short,short,unsigned int) ; 
 unsigned int FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC12(FILE *file, const attr_list_t *attrs,
                                            const type_t *type,
                                            enum type_context context,
                                            unsigned int offset,
                                            unsigned int *typeformat_offset)
{
    unsigned int start_offset = *typeformat_offset;
    short reloff = offset - (*typeformat_offset + 2);
    int in_attr, out_attr;
    int pointer_type;
    unsigned char flags = 0;

    pointer_type = FUNC1(type, attrs, context);

    in_attr = FUNC3(attrs, ATTR_IN);
    out_attr = FUNC3(attrs, ATTR_OUT);
    if (!in_attr && !out_attr) in_attr = 1;

    if (!FUNC5(current_iface, current_func))
    {
        if (out_attr && !in_attr && pointer_type == FC_RP)
            flags |= FC_ALLOCED_ON_STACK;
    }
    else if (FUNC2() == MODE_Oif)
    {
        if (context == TYPE_CONTEXT_TOPLEVELPARAM && FUNC6(type) && pointer_type == FC_RP)
        {
            switch (FUNC11(FUNC10(type), NULL, TDT_ALL_TYPES))
            {
            case TGT_STRING:
            case TGT_POINTER:
            case TGT_CTXT_HANDLE:
            case TGT_CTXT_HANDLE_POINTER:
                flags |= FC_ALLOCED_ON_STACK;
                break;
            case TGT_IFACE_POINTER:
                if (in_attr && out_attr)
                    flags |= FC_ALLOCED_ON_STACK;
                break;
            default:
                break;
            }
        }
    }

    if (FUNC6(type))
    {
        type_t *ref = FUNC10(type);
        if(FUNC4(ref) && !FUNC7(ref))
            flags |= FC_POINTER_DEREF;
    }

    FUNC8(file, 2, "0x%x, 0x%x,\t\t/* %s",
               pointer_type,
               flags,
               FUNC9(pointer_type));
    if (file)
    {
        if (flags & FC_ALLOCED_ON_STACK)
            FUNC0(file, " [allocated_on_stack]");
        if (flags & FC_POINTER_DEREF)
            FUNC0(file, " [pointer_deref]");
        FUNC0(file, " */\n");
    }

    FUNC8(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n", reloff, reloff, offset);
    *typeformat_offset += 4;

    return start_offset;
}