#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {unsigned int ptr_tfsoff; } ;
struct TYPE_24__ {TYPE_1__ array; } ;
struct TYPE_25__ {unsigned int typestring_offset; int /*<<< orphan*/  name; TYPE_2__ details; } ;
typedef  TYPE_3__ type_t ;
typedef  int /*<<< orphan*/  expr_list_t ;
typedef  enum type_context { ____Placeholder_type_context } type_context ;
typedef  int /*<<< orphan*/  attr_list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_RANGE ; 
 int FC_RP ; 
 int /*<<< orphan*/  TDT_ALL_TYPES ; 
#define  TGT_ARRAY 140 
#define  TGT_BASIC 139 
#define  TGT_CTXT_HANDLE 138 
#define  TGT_CTXT_HANDLE_POINTER 137 
#define  TGT_ENUM 136 
#define  TGT_IFACE_POINTER 135 
#define  TGT_INVALID 134 
#define  TGT_POINTER 133 
#define  TGT_RANGE 132 
#define  TGT_STRING 131 
#define  TGT_STRUCT 130 
#define  TGT_UNION 129 
#define  TGT_USER_TYPE 128 
 int TYPE_CONTEXT_CONTAINER ; 
 int TYPE_CONTEXT_CONTAINER_NO_POINTERS ; 
 int TYPE_CONTEXT_PARAM ; 
 int TYPE_CONTEXT_TOPLEVELPARAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,short,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,char const*,unsigned int*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,int,unsigned int*) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,unsigned int*) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,unsigned int,int,unsigned int*) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,int,char const*,unsigned int*) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ *,TYPE_3__*,char const*,unsigned int*) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_3__*,unsigned int*) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ *,TYPE_3__*,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC21(FILE *file, int indent,
                                   const attr_list_t *attrs, type_t *type,
                                   const char *name,
                                   enum type_context context,
                                   unsigned int *typeformat_offset)
{
    unsigned int offset;

    switch (FUNC10(type, attrs, TDT_ALL_TYPES))
    {
    case TGT_CTXT_HANDLE:
    case TGT_CTXT_HANDLE_POINTER:
        return FUNC13(file, attrs, type,
                                       context == TYPE_CONTEXT_TOPLEVELPARAM, typeformat_offset);
    case TGT_USER_TYPE:
        return FUNC20(file, type, typeformat_offset);
    case TGT_STRING:
        return FUNC17(file, attrs, type, context, name, typeformat_offset);
    case TGT_ARRAY:
    {
        unsigned int off;
        /* conformant and pointer arrays are handled specially */
        if ((context != TYPE_CONTEXT_CONTAINER &&
             context != TYPE_CONTEXT_CONTAINER_NO_POINTERS) ||
            !FUNC4(type) || FUNC8(type))
            off = FUNC12(file, attrs, type, name, typeformat_offset);
        else
            off = 0;
        if (context != TYPE_CONTEXT_CONTAINER &&
            context != TYPE_CONTEXT_CONTAINER_NO_POINTERS)
        {
            int ptr_type;
            ptr_type = FUNC3(type, attrs,
                                      context == TYPE_CONTEXT_TOPLEVELPARAM);
            if (ptr_type != FC_RP || FUNC8(type))
            {
                unsigned int absoff = type->typestring_offset;
                short reloff = absoff - (*typeformat_offset + 2);
                off = *typeformat_offset;
                FUNC6(file, 0, "/* %d */\n", off);
                FUNC6(file, 2, "0x%x, 0x0,\t/* %s */\n", ptr_type,
                           FUNC7(ptr_type));
                FUNC6(file, 2, "NdrFcShort(0x%hx),\t/* Offset= %hd (%u) */\n",
                           reloff, reloff, absoff);
                if (ptr_type != FC_RP) FUNC11( type, off, file );
                *typeformat_offset += 4;
            }
            type->details.array.ptr_tfsoff = off;
        }
        return off;
    }
    case TGT_STRUCT:
        return FUNC18(file, type, name, typeformat_offset);
    case TGT_UNION:
        return FUNC19(file, attrs, type, typeformat_offset);
    case TGT_ENUM:
    case TGT_BASIC:
        /* nothing to do */
        return 0;
    case TGT_RANGE:
    {
        expr_list_t *range_list = FUNC2(attrs, ATTR_RANGE);
        if (!range_list)
            range_list = FUNC1(type, ATTR_RANGE);
        return FUNC16(file, attrs, type, range_list, typeformat_offset);
    }
    case TGT_IFACE_POINTER:
        return FUNC14(file, attrs, type, typeformat_offset);
    case TGT_POINTER:
    {
        enum type_context ref_context;
        type_t *ref = FUNC9(type);

        if (context == TYPE_CONTEXT_TOPLEVELPARAM)
            ref_context = TYPE_CONTEXT_PARAM;
        else if (context == TYPE_CONTEXT_CONTAINER_NO_POINTERS)
            ref_context = TYPE_CONTEXT_CONTAINER;
        else
            ref_context = context;

        if (FUNC5(attrs, ref))
        {
            if (context != TYPE_CONTEXT_CONTAINER_NO_POINTERS)
                FUNC15(file, attrs, type, *typeformat_offset + 4, context, typeformat_offset);

            offset = FUNC21(file, indent, attrs, ref, name, ref_context, typeformat_offset);
            if (context == TYPE_CONTEXT_CONTAINER_NO_POINTERS)
                return 0;
            return offset;
        }

        offset = FUNC21( file, indent, attrs, FUNC9(type), name,
                                 ref_context, typeformat_offset);
        if (context == TYPE_CONTEXT_CONTAINER_NO_POINTERS)
            return 0;
        return FUNC15(file, attrs, type, offset, context, typeformat_offset);
    }
    case TGT_INVALID:
        break;
    }
    FUNC0("invalid type %s for var %s\n", type->name, name);
    return 0;
}