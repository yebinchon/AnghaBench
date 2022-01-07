
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef enum stubless_phase { ____Placeholder_stubless_phase } stubless_phase ;
struct TYPE_23__ {int ServerAllocSize; scalar_t__ IsReturn; int IsOut; int IsIn; int IsSimpleRef; int MustFree; scalar_t__ IsBasetype; } ;
struct TYPE_22__ {unsigned char* StackTop; int (* pfnFree ) (void*) ;TYPE_1__* StubDesc; } ;
struct TYPE_20__ {size_t type_offset; unsigned char const type_format_char; } ;
struct TYPE_21__ {int stack_offset; TYPE_6__ attr; TYPE_2__ u; } ;
struct TYPE_19__ {unsigned char* pFormatTypes; } ;
typedef scalar_t__ PFORMAT_STRING ;
typedef int NDR_SCONTEXT ;
typedef TYPE_3__ NDR_PARAM_OIF ;
typedef TYPE_4__ MIDL_STUB_MESSAGE ;
typedef int LONG_PTR ;
typedef int DWORD ;


 unsigned char const FC_BIND_CONTEXT ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 void* NDRSContextValue (int ) ;
 void* NdrAllocate (TYPE_4__*,int ) ;
 int NdrContextHandleInitialize (TYPE_4__*,unsigned char const*) ;
 int RPC_S_INTERNAL_ERROR ;
 int RpcRaiseException (int ) ;






 int TRACE (char*,...) ;
 int calc_arg_size (TYPE_4__*,unsigned char const*) ;
 int call_buffer_sizer (TYPE_4__*,unsigned char*,TYPE_3__ const*) ;
 int call_freer (TYPE_4__*,unsigned char*,TYPE_3__ const*) ;
 int call_marshaller (TYPE_4__*,unsigned char*,TYPE_3__ const*) ;
 int call_unmarshaller (TYPE_4__*,unsigned char**,TYPE_3__ const*,int ) ;
 int debugstr_PROC_PF (TYPE_6__) ;
 int memset (void*,int ,int ) ;
 int param_needs_alloc (TYPE_6__) ;
 int stub1 (void*) ;

__attribute__((used)) static LONG_PTR *stub_do_args(MIDL_STUB_MESSAGE *pStubMsg,
                              PFORMAT_STRING pFormat, enum stubless_phase phase,
                              unsigned short number_of_params)
{
    const NDR_PARAM_OIF *params = (const NDR_PARAM_OIF *)pFormat;
    unsigned int i;
    LONG_PTR *retval_ptr = ((void*)0);

    for (i = 0; i < number_of_params; i++)
    {
        unsigned char *pArg = pStubMsg->StackTop + params[i].stack_offset;
        const unsigned char *pTypeFormat = &pStubMsg->StubDesc->pFormatTypes[params[i].u.type_offset];

        TRACE("param[%d]: %p -> %p type %02x %s\n", i,
              pArg, *(unsigned char **)pArg,
              params[i].attr.IsBasetype ? params[i].u.type_format_char : *pTypeFormat,
              debugstr_PROC_PF( params[i].attr ));

        switch (phase)
        {
        case 130:
            if (params[i].attr.IsOut || params[i].attr.IsReturn)
                call_marshaller(pStubMsg, pArg, &params[i]);
            break;
        case 129:
            if (params[i].attr.MustFree)
            {
                call_freer(pStubMsg, pArg, &params[i]);
            }
            break;
        case 132:
            if (params[i].attr.ServerAllocSize)
            {
                HeapFree(GetProcessHeap(), 0, *(void **)pArg);
            }
            else if (param_needs_alloc(params[i].attr) &&
                     (!params[i].attr.MustFree || params[i].attr.IsSimpleRef))
            {
                if (*pTypeFormat != FC_BIND_CONTEXT) pStubMsg->pfnFree(*(void **)pArg);
            }
            break;
        case 131:
            if (param_needs_alloc(params[i].attr) && !params[i].attr.ServerAllocSize)
            {
                if (*pTypeFormat == FC_BIND_CONTEXT)
                {
                    NDR_SCONTEXT ctxt = NdrContextHandleInitialize(pStubMsg, pTypeFormat);
                    *(void **)pArg = NDRSContextValue(ctxt);
                }
                else
                {
                    DWORD size = calc_arg_size(pStubMsg, pTypeFormat);
                    if (size)
                    {
                        *(void **)pArg = NdrAllocate(pStubMsg, size);
                        memset(*(void **)pArg, 0, size);
                    }
                }
            }
            break;
        case 128:
            if (params[i].attr.ServerAllocSize)
                *(void **)pArg = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                                           params[i].attr.ServerAllocSize * 8);

            if (params[i].attr.IsIn)
                call_unmarshaller(pStubMsg, &pArg, &params[i], 0);
            break;
        case 133:
            if (params[i].attr.IsOut || params[i].attr.IsReturn)
                call_buffer_sizer(pStubMsg, pArg, &params[i]);
            break;
        default:
            RpcRaiseException(RPC_S_INTERNAL_ERROR);
        }
        TRACE("\tmemory addr (after): %p -> %p\n", pArg, *(unsigned char **)pArg);


        if (params[i].attr.IsReturn) retval_ptr = (LONG_PTR *)pArg;
    }
    return retval_ptr;
}
