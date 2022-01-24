#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  enum stubless_phase { ____Placeholder_stubless_phase } stubless_phase ;
struct TYPE_23__ {int ServerAllocSize; scalar_t__ IsReturn; int /*<<< orphan*/  IsOut; int /*<<< orphan*/  IsIn; int /*<<< orphan*/  IsSimpleRef; int /*<<< orphan*/  MustFree; scalar_t__ IsBasetype; } ;
struct TYPE_22__ {unsigned char* StackTop; int /*<<< orphan*/  (* pfnFree ) (void*) ;TYPE_1__* StubDesc; } ;
struct TYPE_20__ {size_t type_offset; unsigned char const type_format_char; } ;
struct TYPE_21__ {int stack_offset; TYPE_6__ attr; TYPE_2__ u; } ;
struct TYPE_19__ {unsigned char* pFormatTypes; } ;
typedef  scalar_t__ PFORMAT_STRING ;
typedef  int /*<<< orphan*/  NDR_SCONTEXT ;
typedef  TYPE_3__ NDR_PARAM_OIF ;
typedef  TYPE_4__ MIDL_STUB_MESSAGE ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 unsigned char const FC_BIND_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned char const*) ; 
 int /*<<< orphan*/  RPC_S_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  STUBLESS_CALCSIZE 133 
#define  STUBLESS_FREE 132 
#define  STUBLESS_INITOUT 131 
#define  STUBLESS_MARSHAL 130 
#define  STUBLESS_MUSTFREE 129 
#define  STUBLESS_UNMARSHAL 128 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,unsigned char*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,unsigned char*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,unsigned char*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,unsigned char**,TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

__attribute__((used)) static LONG_PTR *FUNC17(MIDL_STUB_MESSAGE *pStubMsg,
                              PFORMAT_STRING pFormat, enum stubless_phase phase,
                              unsigned short number_of_params)
{
    const NDR_PARAM_OIF *params = (const NDR_PARAM_OIF *)pFormat;
    unsigned int i;
    LONG_PTR *retval_ptr = NULL;

    for (i = 0; i < number_of_params; i++)
    {
        unsigned char *pArg = pStubMsg->StackTop + params[i].stack_offset;
        const unsigned char *pTypeFormat = &pStubMsg->StubDesc->pFormatTypes[params[i].u.type_offset];

        FUNC7("param[%d]: %p -> %p type %02x %s\n", i,
              pArg, *(unsigned char **)pArg,
              params[i].attr.IsBasetype ? params[i].u.type_format_char : *pTypeFormat,
              FUNC13( params[i].attr ));

        switch (phase)
        {
        case STUBLESS_MARSHAL:
            if (params[i].attr.IsOut || params[i].attr.IsReturn)
                FUNC11(pStubMsg, pArg, &params[i]);
            break;
        case STUBLESS_MUSTFREE:
            if (params[i].attr.MustFree)
            {
                FUNC10(pStubMsg, pArg, &params[i]);
            }
            break;
        case STUBLESS_FREE:
            if (params[i].attr.ServerAllocSize)
            {
                FUNC2(FUNC0(), 0, *(void **)pArg);
            }
            else if (FUNC15(params[i].attr) &&
                     (!params[i].attr.MustFree || params[i].attr.IsSimpleRef))
            {
                if (*pTypeFormat != FC_BIND_CONTEXT) pStubMsg->pfnFree(*(void **)pArg);
            }
            break;
        case STUBLESS_INITOUT:
            if (FUNC15(params[i].attr) && !params[i].attr.ServerAllocSize)
            {
                if (*pTypeFormat == FC_BIND_CONTEXT)
                {
                    NDR_SCONTEXT ctxt = FUNC5(pStubMsg, pTypeFormat);
                    *(void **)pArg = FUNC3(ctxt);
                }
                else
                {
                    DWORD size = FUNC8(pStubMsg, pTypeFormat);
                    if (size)
                    {
                        *(void **)pArg = FUNC4(pStubMsg, size);
                        FUNC14(*(void **)pArg, 0, size);
                    }
                }
            }
            break;
        case STUBLESS_UNMARSHAL:
            if (params[i].attr.ServerAllocSize)
                *(void **)pArg = FUNC1(FUNC0(), HEAP_ZERO_MEMORY,
                                           params[i].attr.ServerAllocSize * 8);

            if (params[i].attr.IsIn)
                FUNC12(pStubMsg, &pArg, &params[i], 0);
            break;
        case STUBLESS_CALCSIZE:
            if (params[i].attr.IsOut || params[i].attr.IsReturn)
                FUNC9(pStubMsg, pArg, &params[i]);
            break;
        default:
            FUNC6(RPC_S_INTERNAL_ERROR);
        }
        FUNC7("\tmemory addr (after): %p -> %p\n", pArg, *(unsigned char **)pArg);

        /* make a note of the address of the return value parameter for later */
        if (params[i].attr.IsReturn) retval_ptr = (LONG_PTR *)pArg;
    }
    return retval_ptr;
}