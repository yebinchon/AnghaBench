#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {unsigned int typestring_offset; int /*<<< orphan*/ * attrs; TYPE_4__ const* type; } ;
typedef  TYPE_3__ var_t ;
struct TYPE_21__ {int /*<<< orphan*/  ptr_tfsoff; } ;
struct TYPE_22__ {TYPE_1__ array; } ;
struct TYPE_24__ {unsigned int typestring_offset; TYPE_2__ details; } ;
typedef  TYPE_4__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IN ; 
 int /*<<< orphan*/  ATTR_OUT ; 
 unsigned char FC_BIND_PRIMITIVE ; 
#define  FC_BOGUS_STRUCT 143 
 unsigned char FC_ENUM32 ; 
 unsigned char FC_LONG ; 
#define  FC_PSTRUCT 142 
 int /*<<< orphan*/  FC_RP ; 
#define  FC_STRUCT 141 
 unsigned short IsBasetype ; 
 unsigned short IsByValue ; 
 unsigned short IsIn ; 
 unsigned short IsOut ; 
 unsigned short IsReturn ; 
 unsigned short IsSimpleRef ; 
 unsigned short MustFree ; 
 unsigned short MustSize ; 
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
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (TYPE_4__ const*) ; 
 unsigned char FUNC2 (TYPE_4__ const*) ; 
 unsigned char FUNC3 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__ const*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC5 (TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int*) ; 
 unsigned int FUNC6 (TYPE_3__ const*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__ const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 unsigned int pointer_size ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__ const*) ; 
 unsigned int FUNC13 (TYPE_4__ const*) ; 
 TYPE_4__* FUNC14 (TYPE_4__ const*) ; 
 int FUNC15 (TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC16( const var_t *var, int is_return, unsigned short *flags,
                                       unsigned int *stack_size, unsigned int *typestring_offset )
{
    unsigned int alignment, server_size = 0, buffer_size = 0;
    unsigned char fc = 0;
    int is_byval;
    int is_in = FUNC8(var->attrs, ATTR_IN);
    int is_out = FUNC8(var->attrs, ATTR_OUT);

    if (is_return) is_out = TRUE;
    else if (!is_in && !is_out) is_in = TRUE;

    *flags = 0;
    *stack_size = FUNC6( var, &is_byval );
    *typestring_offset = var->typestring_offset;

    if (is_in)     *flags |= IsIn;
    if (is_out)    *flags |= IsOut;
    if (is_return) *flags |= IsReturn;

    if (!FUNC11( var->attrs, var->type ))
        buffer_size = FUNC5( var->type, NULL, var->attrs, TRUE, &alignment );

    switch (FUNC15( var->type, var->attrs, TDT_ALL_TYPES ))
    {
    case TGT_BASIC:
        *flags |= IsBasetype;
        fc = FUNC2( var->type );
        if (fc == FC_BIND_PRIMITIVE)
        {
            buffer_size = 4;  /* actually 0 but avoids setting MustSize */
            fc = FC_LONG;
        }
        break;
    case TGT_ENUM:
        *flags |= IsBasetype;
        fc = FUNC3( var->type );
        break;
    case TGT_RANGE:
        *flags |= IsByValue;
        break;
    case TGT_STRUCT:
    case TGT_UNION:
    case TGT_USER_TYPE:
        *flags |= MustFree | (is_byval ? IsByValue : IsSimpleRef);
        break;
    case TGT_IFACE_POINTER:
        *flags |= MustFree;
        break;
    case TGT_ARRAY:
        *flags |= MustFree;
        if (FUNC12(var->type) && var->type->details.array.ptr_tfsoff &&
            FUNC4( var->type, var->attrs, !is_return ) == FC_RP)
        {
            *typestring_offset = var->type->typestring_offset;
            *flags |= IsSimpleRef;
        }
        break;
    case TGT_STRING:
        *flags |= MustFree;
        if (FUNC10( var->type ) && FUNC4( var->type, var->attrs, !is_return ) == FC_RP)
        {
            /* skip over pointer description straight to string description */
            if (FUNC9( var->type )) *typestring_offset += 4;
            else *typestring_offset += 2;
            *flags |= IsSimpleRef;
        }
        break;
    case TGT_CTXT_HANDLE_POINTER:
        *flags |= IsSimpleRef;
        *typestring_offset += 4;
        /* fall through */
    case TGT_CTXT_HANDLE:
        buffer_size = 20;
        break;
    case TGT_POINTER:
        if (FUNC4( var->type, var->attrs, !is_return ) == FC_RP)
        {
            const type_t *ref = FUNC14( var->type );

            if (!FUNC11( var->attrs, ref ))
                buffer_size = FUNC5( ref, NULL, NULL, TRUE, &alignment );

            switch (FUNC15( ref, NULL, TDT_ALL_TYPES ))
            {
            case TGT_BASIC:
                *flags |= IsSimpleRef | IsBasetype;
                fc = FUNC1( ref );
                if (!is_in && is_out) server_size = pointer_size;
                break;
            case TGT_ENUM:
                if ((fc = FUNC3( ref )) == FC_ENUM32)
                {
                    *flags |= IsSimpleRef | IsBasetype;
                    if (!is_in && is_out) server_size = pointer_size;
                }
                else
                {
                    server_size = pointer_size;
                }
                break;
            case TGT_UNION:
            case TGT_USER_TYPE:
            case TGT_RANGE:
            case TGT_ARRAY:
                *flags |= IsSimpleRef | MustFree;
                *typestring_offset = ref->typestring_offset;
                if (!is_in && is_out) server_size = FUNC13( ref );
                break;
            case TGT_STRING:
            case TGT_POINTER:
            case TGT_CTXT_HANDLE:
            case TGT_CTXT_HANDLE_POINTER:
                *flags |= MustFree;
                server_size = pointer_size;
                break;
            case TGT_IFACE_POINTER:
                *flags |= MustFree;
                if (is_in && is_out) server_size = pointer_size;
                break;
            case TGT_STRUCT:
                *flags |= IsSimpleRef | MustFree;
                *typestring_offset = ref->typestring_offset;
                switch (FUNC7(ref))
                {
                case FC_STRUCT:
                case FC_PSTRUCT:
                case FC_BOGUS_STRUCT:
                    if (!is_in && is_out) server_size = FUNC13( ref );
                    break;
                default:
                    break;
                }
                break;
            case TGT_INVALID:
                FUNC0(0);
            }
        }
        else  /* not ref pointer */
        {
            *flags |= MustFree;
        }
        break;
    case TGT_INVALID:
        FUNC0(0);
    }

    if (!buffer_size) *flags |= MustSize;

    if (server_size)
    {
        server_size = (server_size + 7) / 8;
        if (server_size < 8) *flags |= server_size << 13;
    }
    return fc;
}